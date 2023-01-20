//
//  TestViewController.swift
//  twoTableView
//
//  Created by mark berkov on 16.12.22.
//

import UIKit

class TestViewController: UIViewController {
    
    var button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .yellow
        button.setTitle("login", for: .normal)
        button.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        button.setTitleColor(.red, for: .normal)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(button)
        button.addTarget(TestViewController.self, action: #selector(login), for: .touchUpInside)

        // Do any additional setup after loading the view.
    }
    
    @objc func login() {
        let firstVC = ViewController()
        let secondVC = SecondViewController()
        
        let firstNC = UINavigationController(rootViewController: firstVC)
        let secondNC = UINavigationController(rootViewController: secondVC)
        
        let tabbar = UITabBarController()
        tabbar.setViewControllers([firstNC, secondNC], animated: true)
        tabbar.modalPresentationStyle = .fullScreen
        present(tabbar, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
