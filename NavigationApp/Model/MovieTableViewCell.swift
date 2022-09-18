//
//  MovieTableViewCell.swift
//  NavigationApp
//
//  Created by Francisco Hernandez on 17/09/22.
//

import UIKit

class MovieTableViewCell: UITableViewCell {

    
    @IBOutlet var movieImageView: UIImageView!
    
    @IBOutlet var movieLabel: UILabel!
        
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
