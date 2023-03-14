//
//  ViewController.swift
//  exam
//
//  Created by Jarae on 14/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func login(_ sender: Any) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

