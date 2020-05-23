//
//  TableViewCell.swift
//  Antino Project
//
//  Created by MANINDER SINGH on 24/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var ageLbl: UILabel!
    @IBOutlet weak var locationLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        profileImage.makeRounded()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
