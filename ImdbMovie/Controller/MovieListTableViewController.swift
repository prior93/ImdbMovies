//
//  ViewController.swift
//  ImdbMovie
//
//  Created by parashar.r.adhikary on 19/02/2021.
//

import UIKit

class MovieListTableViewController: UITableViewController {

    var movies = Movie.createMovie()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = true

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
         self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movies.count
    }
    
    
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MovieListCell", for: indexPath)

        // Configure the cell...

        let movie = movies[indexPath.row]
        cell.textLabel?.text = movie.director
        cell.detailTextLabel?.text = movie.movie
        cell.imageView?.image = UIImage(named: movie.cover)
        
        return cell
    }
    
    
    //  MARK: - Table view Delegate

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 70
    }
    
    

    
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
        let currentMovie = movies.remove(at: fromIndexPath.row)
        movies.insert(currentMovie, at: to.row)
    }
    

    
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    
    override func tableView(_ tableView: UITableView, editingStyleForRowAt indexPath: IndexPath) -> UITableViewCell.EditingStyle {
        return .none
    }

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let indexPath = tableView.indexPathForSelectedRow {
            print("indexPath.row: ", indexPath.row)
        
        // Get the new view controller using segue.destination.
            let detailVC = segue.destination as! DetailViewController
        // Pass the selected object to the new view controller.
            detailVC.movie = movies[indexPath.row]
        }
    }
   

}
