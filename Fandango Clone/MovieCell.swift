//
//  MovieCell.swift
//  Fandango Clone
//
//  Created by Hung Phan on 1/20/20.
//  Copyright © 2020 Hung Phan. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var titleCell: UILabel!
    @IBOutlet weak var imageCell: UIImageView!
    @IBOutlet weak var descriptionCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
