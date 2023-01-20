//
//  ViewController.swift
//  twoTableView
//
//  Created by mark berkov on 12.12.22.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate{
    
    var contacts = Source.makeContacts()
    var searchBar = UISearchBar()
    let tableView: UITableView = .init()
   // (frame: CGRect(x: 0, y: 0, width: 0, height: 0), style: .grouped)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpSearchBar()
        setUpTableView()
        self.title = "CustomTableViewCell"
        self.navigationController?.navigationBar.backgroundColor = .green
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        
        self.navigationController?.navigationBar.barTintColor = #colorLiteral(red: 1, green: 0.6601966023, blue: 0.6700095534, alpha: 1)
        
        
        searchBar.delegate = self
        tableView.dataSource = self
        tableView.delegate = self
    }
    
}




extension ViewController {
    
    private func setUpTableView() {
        view.addSubview(tableView)
        //tableView.addSubview(searchBar)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
           
            
            tableView.topAnchor.constraint(equalTo: searchBar.bottomAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)

        ])
    }
    
    private func setUpSearchBar() {
        
        view.addSubview(searchBar)
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchBar.topAnchor.constraint(equalTo: view.topAnchor, constant: 92),
        searchBar.leadingAnchor.constraint(equalTo: view.leadingAnchor),
        searchBar.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        //searchBar.widthAnchor.constraint(equalToConstant: view.bounds.width),
        searchBar.heightAnchor.constraint(equalToConstant: 70)
        ])
    }
}












extension ViewController: UITableViewDataSource, UITableViewDelegate {
   
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        contacts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as? CustomTableViewCell else { fatalError() }
        
        cell.configure(contact: contacts[indexPath.row])
        cell.layer.borderWidth = 1
        cell.layer.borderColor = CGColor(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
        cell.layer.cornerRadius = 14
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        contacts.remove(at: indexPath.row)
        tableView.deleteRows(at: [indexPath], with: .fade)
    }
    
    
}

