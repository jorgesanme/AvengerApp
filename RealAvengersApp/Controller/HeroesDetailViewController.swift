//
//  HeroesDetailViewController.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 10/12/2020.
//

import UIKit

class HeroesDetailViewController: UIViewController{
    
    @IBOutlet var name: UILabel?
    @IBOutlet var image: UIImageView?
    @IBOutlet var nickName: UILabel?
    @IBOutlet var backTextcellView: UIView?
    @IBOutlet var descritionView: UITextView?
    
    
    
    var HeroesDetailData:Heroes? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
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
        
        image?.image = UIImage(named: HeroesDetailData?.image ?? "")
        nickName?.text = HeroesDetailData?.nickName
        descritionView?.text = HeroesDetailData?.description
        name?.text = HeroesDetailData?.name
        //self.title = HeroesDetailData?.name
        
    }
    
    func cleanView(){
        
        nickName?.text = nil
        image?.image = nil
        descritionView?.text = nil
        name?.text = nil
    }
    
    @IBAction func onReturnPressed(_ sender: UIButton) {        
        
        navigationController?.popViewController(animated: true)
    }
}
