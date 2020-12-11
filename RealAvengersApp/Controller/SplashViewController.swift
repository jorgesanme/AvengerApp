//
//  SplashViewController.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 07/12/2020.
//

import UIKit

class SplashViewController: UIViewController {
    
    //Se definen el  IBOulet para conectar la actividad
    @IBOutlet var loading: UIActivityIndicatorView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Se confirma la animación del ActivityIndicator
        loading?.startAnimating()
    }


}

