//
//  PasswordsTableViewCell.swift
//  passworld
//
//  Created by Mücahit Alperen Eryılmaz on 1.01.2023.
//

import Foundation
import UIKit

class PasswordsTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var copyButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    @IBOutlet weak var objectLogo: UIButton!
    
    func setup(_ passwordCell: PasswordsData) {
        titleLabel.text = passwordCell.attributes.platform
    }

    
    
}
