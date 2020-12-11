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
    
    private var heroData: [Heroes] = []
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
    
    private func loadData(){
        heroData = [Heroes(name: "Capitana Marvel",
                           image: "Baner_CapitanaMarvel",
                           description: "una niña pija que tiene probemas sin resolver con su papi",
                           nickName: "la niña de papi"),
                    Heroes(name: "SpiderMan",
                           image: "Baner_CapitanaMarvel",
                           description: "una niña pija que tiene probemas sin resolver con su papi",
                           nickName: "el pringadillo")
        ]
    }
}

extension HomeCollectionViewController: UICollectionViewDelegate, UICollectionViewDataSource{
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
    
    
}
