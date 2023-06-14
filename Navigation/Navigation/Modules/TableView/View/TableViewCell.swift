//
//  StoryboardTableViewCell.swift
//  Navigation
//
//  Created by Cuong on 13/06/2023.
//

import UIKit


class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var phone: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func fillData(item: Contact) {
        self.name.text = item.name
        self.phone.text = item.phone
    }

}
