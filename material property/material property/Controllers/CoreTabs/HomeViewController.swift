//
//  ViewController.swift
//  material property
//
//  Created by mark berkov on 25.10.22.
//

import UIKit
import FirebaseAuth

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        //chek auth status
        handleNotAuthenticated()
        
    }
    
    private func handleNotAuthenticated() {
        
        if Auth.auth().currentUser == nil {
            //show login
            let loginVC = LoginViewController()
            loginVC.modalPresentationStyle = .fullScreen
            present(loginVC, animated: true)
            
        }
    }
    
}

