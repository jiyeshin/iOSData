//
//  TheaterCell.swift
//  OpenAPI1126
//
//  Created by 503-12 on 27/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class TheaterCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblAddr: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}
