//
//  CustomTableViewCell.swift
//  Zuri iOS
//
//  Created by Jamaaldeen Opasina on 9/5/21.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet var img_View: UIImageView!
    @IBOutlet var lbl_name: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
