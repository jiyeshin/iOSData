//
//  MovieCell.swift
//  OpenAPI1126
//
//  Created by 503-12 on 26/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class MovieCell: UITableViewCell {

    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblGenre: UILabel!
    @IBOutlet weak var lblRating: UILabel!
    @IBOutlet weak var thumbnailImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
