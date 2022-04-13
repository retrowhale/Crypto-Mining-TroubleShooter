//
//  DataCell.swift
//  Crypto Mining TroubleShooter
//
//  Created by Deniz Donmezer on 2022-04-13.
//

import UIKit

class DataCell: UITableViewCell {

    @IBOutlet weak var cellLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(title: String) {
        self.cellLabel.text = title
        
    }
    
}
