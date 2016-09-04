//
//  VideoVC.swift
//  NumberOneFan
//
//  Created by Edrick Pascual on 9/3/16.
//  Copyright © 2016 Edge Designs. All rights reserved.
//

import UIKit

class VideoVC: UIViewController {

    
    @IBOutlet weak var webView: UIWebView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    private var _bandRock: BandInfo!
    
    var bandRock: BandInfo {
        get {
            return _bandRock
        } set {
            _bandRock = newValue
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = bandRock.videoTitle
        webView.loadHTMLString(bandRock.videoURL, baseURL: nil)
    }
    
    
}
