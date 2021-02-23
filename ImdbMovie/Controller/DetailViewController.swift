//
//  DetailViewController.swift
//  ImdbMovie
//
//  Created by parashar.r.adhikary on 19/02/2021.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var directorImageView: UIImageView!
    
    
    @IBOutlet weak var directorTextLabel: UILabel!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if movie != nil {
            directorImageView.image = UIImage(named: movie.cover)
            directorTextLabel.text = movie.director + " - " + movie.movie
            directorTextLabel.numberOfLines = 0
        }
    }
    

}

