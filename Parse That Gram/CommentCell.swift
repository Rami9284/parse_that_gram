//
//  CommentCell.swift
//  Parse That Gram
//
//  Created by Judith Ramirez on 3/7/19.
//  Copyright © 2019 Judith Ramirez. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {

            
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var namelabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
