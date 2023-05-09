//
//  UserCell.swift
//  CursoFirebase
//
//  Created by Laboratorio UNAM-Apple1 on 30/06/22.
//

import UIKit

class UserCell: UITableViewCell {

    @IBOutlet weak var imgProfileImage: UIImageView!
    @IBOutlet weak var lblUserName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
