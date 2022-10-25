//
//  ViewController.swift
//  UIAlertController
//
//  Created by mark berkov on 23.10.22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func buttonPressed(_ sender: Any) {
        
        let alert = UIAlertController(title: "soska", message: " TOUCH RED TEXT", preferredStyle: .alert)
        let action = UIAlertAction(title: "THANK U", style: .destructive)
        
        alert.addTextField()
        alert.addAction(action)
        
        self.present(alert, animated: true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

