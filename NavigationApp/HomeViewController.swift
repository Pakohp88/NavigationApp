//
//  HomeViewController.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController {
    
    let movieDataManager = MovieDataManager()
    let genreDataManager = GenreDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieDataManager.fetch(genres: "Adventure")
        //genreDataManager.fetch()
    }
    
    
    
}
