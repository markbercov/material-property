//
//  ViewController.swift
//  UIAlertController
//
//  Created by mark berkov on 23.10.22.
//

import UIKit

class ViewController: UIViewController {
    
    let label = UILabel()
    let buttonHow = UIButton()
    let buttonSum = UIButton()
    
    var textField = UITextField()
    override func viewDidLoad() {
       
        self.label.frame = CGRect(x: 0, y: 200, width: 333, height: 44)
        self.label.center.x = self.view.center.x
        self.label.backgroundColor = .yellow
        self.label.text = "Hi"
        self.view.addSubview(label)
         
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        setName(title: "hi there", message: "say my name", style: .alert)
    }
    
    private func setName(title: String, message: String, style: UIAlertController.Style) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: style)
        let alertAction = UIAlertAction(title: "ok", style: .destructive) {
            (action) in
            guard let labelText = self.label.text,
                  let textInAlert = alertController.textFields?.first?.text
            else { return }
            self.label.text = labelText + " ," + textInAlert + "!"
        }
        
        alertController.addTextField()
        alertController.addAction(alertAction)
        present(alertController, animated: true)
        view.reloadInputViews()
    }
    
}
