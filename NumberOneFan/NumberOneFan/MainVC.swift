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
        
        let p2 = BandInfo(imageURL: "http://www.wavefm.com.au/images/stories/2015/04/redfoo.jpg" , videoURL: "<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/ev4bY1SkZLg\" frameborder=\"0\"allowfullscreen></iframe>", videoTitle: "Where The Sun Goes Down")
        
        
        bandArray.append(p1)
        bandArray.append(p2)
        
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }

    override func prepare(for segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let destination = segue.destination as? VideoVC {
            if let party = sender as? BandInfo {
                destination.bandRock = party
            }
        }
    }
    
}

extension MainVC: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let bandRock = bandArray[indexPath.row]
        
        performSegue(withIdentifier: "VideoVC", sender: bandRock)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bandArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        if let cell = tableView.dequeueReusableCell(withIdentifier: "PartyViewCell", for: indexPath) as? PartyViewCell {
            
            let bandCell =  bandArray[indexPath.row]
            
            cell.updateUI(bandInfo: bandCell)
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
