//
//  HomeViewController.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 02/09/22.
//

import UIKit

class HomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    let genreDataManager = GenreDataManager()
    var generoSeleccionado = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        genreDataManager.fetch()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        genreDataManager.genreCount()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "genreCell", for: indexPath) as! GenreCollectionViewCell
        cell.genreImageView.image = UIImage(named: genreDataManager.genres[indexPath.row].genre)
        cell.genreLabel.text = genreDataManager.genres[indexPath.row].genre
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        generoSeleccionado = genreDataManager.genreValue(index: indexPath.row)
        self.performSegue(withIdentifier: "detailSegue", sender: self.self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destination = segue.destination as! DetailViewController
        destination.generoRecibido = generoSeleccionado
    }
}
