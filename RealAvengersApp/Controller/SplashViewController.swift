//
//  SplashViewController.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 07/12/2020.
//

import UIKit

class SplashViewController: UIViewController {
    
    
    //MARK: - CONSTANTES Se definen el  IBOulet para conectar la actividad
    @IBOutlet var loading: UIActivityIndicatorView?


    
    //MARK: - Ciclo de vida del View controller
    override func viewDidLoad() {
        super.viewDidLoad()
        // Se confirma la animación del ActivityIndicator
        loading?.startAnimating()
        
        navigateNext()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        navigationController?.isNavigationBarHidden = true
    }
    
    //MARK: - Navegacion funcion
    fileprivate func navigateNext() {
        // se inicia un hilo para que se cargue la navegación
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) { [weak self] in
            //Se crea navegacion a mano hacia el ViewControler inicial
            //se descarta el splashView
            let storyBoardHome = UIStoryboard(name: "Home", bundle: nil)
            if let destination = storyBoardHome.instantiateInitialViewController(){
                self?.navigationController?.setViewControllers([destination], animated: true)
            }
        }
    }


}

