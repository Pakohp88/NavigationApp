//
//  DetailViewController.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 02/09/22.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var generoRecibido = String()
    let movieDataManager = MovieDataManager()
    var peliculaSeleccionada : Movie?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        movieDataManager.fetch(genres: generoRecibido)
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movieDataManager.movieCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tableCell = tableView.dequeueReusableCell(withIdentifier: "movieOption", for: indexPath) as! MovieTableViewCell

        tableCell.movieImageView.image = UIImage(named: movieDataManager.movies[indexPath.row].poster_url)
        
        tableCell.movieLabel.text = movieDataManager.movies[indexPath.row].title + " - " + movieDataManager.movies[indexPath.row].year
        return tableCell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        peliculaSeleccionada = movieDataManager.movieAt(index: indexPath.row)
        self.performSegue(withIdentifier: "viewMoreSegue", sender: self.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! ViewMoreViewController
        destination.peliculaRecibida = peliculaSeleccionada
    }
    
}
