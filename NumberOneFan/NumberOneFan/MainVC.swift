//
//  MainVC
//  NumberOneFan
//
//  Created by Edrick Pascual on 9/3/16.
//  Copyright © 2016 Edge Designs. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var bandArray = [BandInfo]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let p1 = BandInfo(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg" , videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\"allowfullscreen></iframe>", videoTitle: "Where The Sun Goes Down")
        
        bandArray.append(p1)
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bandArray.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCellWithIdentifier("PartyViewCell", forIndexPath: indexPath) as? PartyViewCell {
            let bandCell =  bandArray[indexPath.row]
            
            cell.updateUI(bandCell)
            
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
