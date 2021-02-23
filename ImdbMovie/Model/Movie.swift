//
//  Movie.swift
//  ImdbMovie
//
//  Created by parashar.r.adhikary on 19/02/2021.
//

import Foundation

struct Movie {
    
    let director: String
    let movie: String
    let cover: String
    
    static func createMovie() -> [Movie] {
        var movies: [Movie] = []
        
        let director = DataManager.shared.director
        let movie = DataManager.shared.movie
        let covers = DataManager.shared.cover
        
        for index in 0..<director.count {
            let movie = Movie(director: director[index], movie: movie[index], cover: covers[index])
            movies.append(movie)
        }
        return movies
    }
    
}
