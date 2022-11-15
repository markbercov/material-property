//
//  ViewController.swift
//  Router
//
//  Created by mark berkov on 14.11.22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func didTapDemo(_ sender: Any) {
        let storyboard = UIStoryboard(name: "DemoModeVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DemoModeVC") as! DemoModeVC
       // present(vc, animated: true)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func didTapLogin(_ sender: Any) {
        let storyboard = UIStoryboard(name: "LoginVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @IBAction func didTabTerms(_ sender: Any) {
        let storyboard = UIStoryboard(name: "TermsVC", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TermsVC") as! TermsVC
        navigationController?.pushViewController(vc, animated: true)
    }
}

