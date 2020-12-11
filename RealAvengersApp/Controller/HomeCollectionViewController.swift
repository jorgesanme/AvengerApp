//
//  HomeViewController.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 08/12/2020.
//

import UIKit

class HomeCollectionViewController: UIViewController{
    
    //MARK: - Definir Outlet
    
    @IBOutlet var collectionView: UICollectionView?
    
    //MARK:  - Datos a mostar
    private let heroesPrecargados = HeroRepository()
    
    private var heroData: [Heroes] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
    //MARK: -PREPARAR EL ENVIO DE DATOS
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destination = segue.destination as?  HeroesDetailViewController,
              let data = sender as? Heroes else{
            return
        }
        
        destination.HeroesDetailData = data
        
    }
    
    private func loadData(){
        heroData = heroesPrecargados.heroSamples
    }
}

extension HomeCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return heroData.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "AvengerColletionCellView", for: indexPath) as?  AvengerColletionCellView
        
        if(indexPath.row < heroData.count){
            cell?.configureView(hero: heroData[indexPath.row] )
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    //MARK: -ENVIAR LOS DATOS
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(indexPath.row < heroData.count){
            print(heroData[indexPath.row].name)
            performSegue(withIdentifier: "SEGUE_FROM_HERO_TO_DETAIL",
                         sender: heroData[indexPath.row])
        }
    }
}
