//
//  ViewController.swift
//  uiswitch+
//
//  Created by mark berkov on 14.11.22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var loginTF: UITextField!
    @IBOutlet var passTF: UITextField!
    
    @IBOutlet var button: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


//    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
//        switch identifier {
//        case "id1":
//            if chek() {
//            return true
//        }
//        default: return false
//        }
//       return false
//    }
    
    
    @IBAction func pressed(_ sender: Any) {
//        guard chek() else { return }
//            performSegue(withIdentifier: "id1", sender: nil)
        
    }
    
    private func chek() -> Bool {
        loginTF.text == "1" && passTF.text == "1"
    }
}

