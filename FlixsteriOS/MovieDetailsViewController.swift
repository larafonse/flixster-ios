//
//  MovieDetailsViewController.swift
//  FlixsteriOS
//
//  Created by Nicolas Lara on 2/15/22.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    var movie:[String:Any]!
    @IBOutlet weak var backdropView: UIImageView!
    @IBOutlet weak var posterView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = movie["title"] as! String
        titleLabel.sizeToFit()
        descriptionLabel.text = movie["overview"] as! String
        descriptionLabel.sizeToFit()    
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl+posterPath)!
        
        posterView.af_setImage(withURL : posterUrl)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)!
        
        backdropView.af_setImage(withURL : backdropUrl)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
