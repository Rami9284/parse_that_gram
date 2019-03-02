//
//  PostCell.swift
//  Parse That Gram
//
//  Created by Judith Ramirez on 3/2/19.
//  Copyright © 2019 Judith Ramirez. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    @IBOutlet weak var photoVIew: UIImageView!
    @IBOutlet weak var usernamelabel: UILabel!
    
    @IBOutlet weak var captionlabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
