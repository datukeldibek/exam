//
//  SecondViewController.swift
//  exam
//
//  Created by Jarae on 14/3/23.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    var users: [User] = [
        User(name: "Datu", number: "999999", image: ""),
        User(name: "Datu", number: "999999", image: ""),
        User(name: "Datu", number: "999999", image: ""),
        User(name: "Datu", number: "999999", image: "")
        
        
    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        
    }
}
extension SecondViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")
        cell.textLabel?.text = users[indexPath.row].name
        cell.detailTextLabel?.text = users[indexPath.row].number
        cell.imageView?.image = UIImage(named: "image")
        return cell
    }
    
    
}

struct User {
    var name: String
    var number: String
    var image: String
}
