//
//  PartyViewCell.swift
//  NumberOneFan
//
//  Created by Edrick Pascual on 9/3/16.
//  Copyright © 2016 Edge Designs. All rights reserved.
//

import UIKit

class PartyViewCell: UITableViewCell {

    @IBOutlet weak var videoPreviewImage: UIImageView!
    
    @IBOutlet weak var videoTitleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func updateUI(bandInfo: BandInfo) {
        videoTitleLabel.text = bandInfo.videoTitle
        
    }

}
