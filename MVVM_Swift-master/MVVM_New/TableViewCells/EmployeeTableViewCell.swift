//
//  EmployeeTableViewCell.swift
//  MVVM_New
//
//  Created by Snehalata paliwal on 22/09/22.
//  Copyright © 2022 Snehalata paliwal. All rights reserved.
//

import UIKit

class EmployeeTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var employeeIdLabel: UILabel!
    @IBOutlet weak var employeeNameLabel: UILabel!
    
    var employee : EmployeeData? {
        didSet {
            employeeIdLabel.text = employee?.title
            employeeNameLabel.text = employee?.body
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
