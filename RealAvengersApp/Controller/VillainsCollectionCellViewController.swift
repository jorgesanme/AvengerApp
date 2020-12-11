//
//  VillainsCollectionCellViewController.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 09/12/2020.
//

import UIKit

class VillainsCollectionCellViewController: UIViewController {
    
    //MARK: - Definir Outlet
    @IBOutlet var collectionView: UICollectionView?
    
    //MARK:  - Datos a mostar
    private let villainsPrecargados = VillainsRepository()
    private var villainsData: [Villains] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loadData()
        
        collectionView?.delegate = self
        collectionView?.dataSource = self
    }
    
    //MARK: -PREPARAR EL ENVIO DE DATOS
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard  let destination =  segue.destination as? VillainsDetailViewController,
               let data = sender as? Villains
                else {
            return
        }
        
        destination.VillainDetailData = data
        
    }
    
    private func loadData(){
        villainsData = villainsPrecargados.villainsSamples
    }
    
    
    
}

extension  VillainsCollectionCellViewController: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return villainsData.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: "VillainsCollectionCellView", for: indexPath) as? VillainsCollectionCellView
        
        if(indexPath.row < villainsData.count){
            cell?.configureView(villan: villainsData[indexPath.row])
        }
        
        return cell ?? UICollectionViewCell()
    }
    
    //MARK: -ENVIAR LOS DATOS
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if(indexPath.row < villainsData.count){
            print(villainsData[indexPath.row].name)
            performSegue(withIdentifier: "SEGUE_FROM_VILLAIN_TO_DETAIL",
                         sender: villainsData[indexPath.row])
        }
  
    
}

}

