//
//  ViewTaskTableViewCell.swift
//  iOSTaskManager
//
//  Created by Kaleb Allen on 11/1/18.
//  Copyright © 2018 Kaleb Allen. All rights reserved.
//

import UIKit

class ViewTaskTableViewCell: UITableViewCell {
    @IBOutlet weak var TaskTittle: UILabel!
    @IBOutlet weak var DueDateLabel: UILabel!
    @IBOutlet weak var CheckedStatus: UILabel!
    
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
