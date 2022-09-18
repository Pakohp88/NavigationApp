//
//  ViewMoreViewController.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 02/09/22.
//

import UIKit

class ViewMoreViewController: UIViewController {

    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var runTimeLabel: UILabel!
    @IBOutlet var actorsLabel: UILabel!
    @IBOutlet var plotLabel: UILabel!
    @IBOutlet var directorLabel: UILabel!
    @IBOutlet var posterImageView: UIImageView!
    var peliculaRecibida : Movie?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = peliculaRecibida!.title + " - " + peliculaRecibida!.year
        runTimeLabel.text = "Runtime: "  + peliculaRecibida!.runtime + " mins."
        actorsLabel.text = "Actors: " + peliculaRecibida!.actors
        actorsLabel.numberOfLines = 2
        plotLabel.text = "Plot: " + peliculaRecibida!.plot
        plotLabel.numberOfLines = 3
        directorLabel.text = "Director: " + peliculaRecibida!.director
        posterImageView.image = UIImage(named: peliculaRecibida!.poster_url)
    }
    
    

}
