//
//  LoadingCell.swift
//  StoreSearch
//
//  Created by Sebastien Arbogast on 09/09/2016.
//  Copyright © 2016 BusinessTraining. All rights reserved.
//

import UIKit

class LoadingCell: UITableViewCell {
    
    @IBOutlet weak var activityIndicator:UIActivityIndicatorView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
