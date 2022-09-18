//
//  MovieDataManager.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 03/09/22.
//

import Foundation

class MovieDataManager{
    
    public var movies: [Movie] = []
    
    func fetch(genres : String){
        if let file = Bundle.main.url(forResource: "movies", withExtension: "json"){
            do{
                let data = try Data(contentsOf: file)
                let decodeMovies = try JSONDecoder().decode([Movie].self, from: data)
                print(decodeMovies)
                movies = decodeMovies.filter(
                    {$0.genres.contains(genres)}
                )            
            }
            catch let err{
                print(err.localizedDescription)
            }
        }
    }
    
    func movieCount() -> Int{
        return movies.count
    }
    
    func movieAt(index : Int) -> Movie{
        return movies[index]
    }
    
}
