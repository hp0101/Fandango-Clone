//
//  MovieDetailsViewController.swift
//  Fandango Clone
//
//  Created by Hung Phan on 1/26/20.
//  Copyright © 2020 Hung Phan. All rights reserved.
//

import UIKit

class MovieDetailsViewController: UIViewController {
    
    @IBOutlet weak var backdropImage: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var overviewLabel: UILabel!
    
    @IBOutlet weak var releaseDate: UILabel!
    
    @IBOutlet weak var ratingAvg: UILabel!
    
    var movie : [String:Any]!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
       // make the navigation bar background clear
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        //restore the navigation bar to default
        navigationController?.navigationBar.setBackgroundImage(nil, for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        
        posterView.layer.masksToBounds = true
        posterView.layer.borderWidth = 1.5
        posterView.layer.borderColor = UIColor.white.cgColor
            
        titleLabel.text = movie["title"] as? String
        overviewLabel.text = movie["overview"] as? String
        releaseDate.text = movie["release_date"] as? String
        ratingAvg.text = (NSNumber(value: movie!["vote_average"] as! Double)).stringValue
        
        print(type(of: (NSNumber(value: movie!["vote_average"] as! Double)).stringValue))

        
        let baseUrl = "http://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)!
        posterView.af_setImage(withURL: posterUrl)
        
        
        let backdropPath = movie["backdrop_path"] as! String
        guard let backdropUrl = URL(string: "http://image.tmdb.org/t/p/w780\(backdropPath)") else { return }
        backdropImage.af_setImage(withURL: backdropUrl)
        
        
    }
    

//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }

}
