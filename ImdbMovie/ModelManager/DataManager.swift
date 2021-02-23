//
//  DataManager.swift
//  ImdbMovie
//
//  Created by parashar.r.adhikary on 19/02/2021.
//

import Foundation

class DataManager{
    
    static let shared = DataManager()
    
    var director = [
        "Adil El Arbi",
        "J.R.R Tolkien",
        "James Cameron",
        "Chris Columbus",
        "Nikolaj Arcel",
        "Steven Spielberg",
        "Ryan Coogler",
        "Christopher Nolan",
    ]
    var movie = [
        "Bad boys fore life",
        "The Hobbit",
        "Avatar",
        "Harry Potter and the Chamber of Secrets",
        "The Dark Tower",
        "Indiana Jones",
        "Black Panther",
        "Tenet",
    ]
    var cover = [
        "Adil El Arbi - Bad boys for life",
        "J.R.R Tolkien - The Hobbit",
        "James Cameron - Avatar",
        "Chris Columbus - Harry Potter and the Chamber of Secrets",
        "Nikolaj Arcel - The Dark Tower",
        "Steven Spielberg - Indiana Jones",
        "Ryan Coogler - Black Panther",
        "Christopher Nolan - Tenet",
    ]
}

