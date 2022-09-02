//
//  FavoritesViewController.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 02/09/22.
//

import UIKit

class FavoritesViewController: UIViewController {
    let posters = ["0", "1", "2", "3", "4"]
    @IBOutlet var FavoritePosterimageView: UIImageView!
    @IBOutlet var PosterPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        FavoritePosterimageView.image = UIImage.init(named: "0" )
        PosterPageControl.numberOfPages = posters.count
        // Do any additional setup after loading the view.
    }
    
    @IBAction func posterPageControlAction(_ sender: Any) {
        FavoritePosterimageView.image = UIImage(named: posters[PosterPageControl.currentPage])
    }
}
