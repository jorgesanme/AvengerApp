//
//  VillainsDetailViewController.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 09/12/2020.
//

import UIKit

class VillainsDetailViewController: UIViewController{
    
//    @IBOutlet var name: UILabel?
    @IBOutlet var image: UIImageView?
    @IBOutlet var nickName: UILabel?
    @IBOutlet var backTextcellView: UIView?
    @IBOutlet var descritionView: UITextView?
    
    
    
    var VillainDetailData:Villains? = nil
    
    
    
    
//    weak var delegate: DetailViewController? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(self.VillainDetailData ?? "")
       
        backTextcellView?.layer.cornerRadius = 4.0
        descritionView?.layer.cornerRadius = 5.0
        descritionView?.layer.shadowColor = UIColor.red.cgColor
        descritionView?.layer.shadowOffset = CGSize.zero
        descritionView?.layer.shadowOpacity = 0.9
        descritionView?.layer.shadowRadius = 5.0
        
        cleanView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        image?.image = UIImage(named: VillainDetailData!.image )
       

////        name?.text =  hero.name
        nickName?.text = VillainDetailData?.nickName
        descritionView?.text = VillainDetailData?.description
        self.title =  VillainDetailData?.name
    }
    
    func cleanView(){
        
        nickName?.text = nil
        image?.image = nil
        descritionView?.text = nil
        
    }
    
    func configureView(character: Character){
        
        image?.image = UIImage(named: VillainDetailData?.image ?? "")
        nickName?.text = character.nickName
        descritionView?.text = character.description
        navigationController?.title = character.name
    }
    
    @IBAction func onReturnPressed(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
