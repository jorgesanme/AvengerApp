//
//  AvengerColletionCellView.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 08/12/2020.
//

import UIKit

class AvengerColletionCellView: UICollectionViewCell{
    
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
    
    func configureView(hero: Heroes){
        image?.image = UIImage(named: hero.image ?? "")
        name?.text =  hero.name
        nickName?.text = hero.nickName
    }
    
}
