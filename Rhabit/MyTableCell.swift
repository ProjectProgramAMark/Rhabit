//
//  MyTableCell.swift
//  Rhabit
//
//  Created by Barnes, John on 2/6/16.
//  Copyright © 2016 Mark Moussa. All rights reserved.
//

import UIKit

class MyTableCell: UITableViewCell {
    
    //MARK: Properties
    @IBOutlet weak var habitName: UILabel!
    
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
