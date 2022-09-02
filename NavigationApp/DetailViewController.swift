//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func viewMoreButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "viewMoreSegue", sender: Self.self)
    }

}
