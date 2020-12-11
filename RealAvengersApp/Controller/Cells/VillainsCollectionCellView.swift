//
//  VillainsCollectionCellView.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 09/12/2020.
//

import UIKit

class VillainsCollectionCellView: UICollectionViewCell{
    
    //MARK: - Declarar los IBOutet
    @IBOutlet var cellView: UIView?
    @IBOutlet var name: UILabel?
    @IBOutlet var nickName: UILabel?
    @IBOutlet var image: UIImageView?
    @IBOutlet var bottonViewText: UIView?   
    
    
    
    override class func awakeFromNib() {
        super.awakeFromNib()        
    
       
        
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        // eliminar el contenido de la celda antes de reusar
        name?.text = nil
        nickName?.text = nil
        image?.image = nil
    }
    
    func configureView(villan: Villains){
        image?.image = UIImage(named: villan.image ?? "")
        name?.text =  villan.name
        nickName?.text = villan.nickName
    }
    
    
}
