

import UIKit
import AVFoundation
import SafariServices

class SpeakTableViewController: UITableViewController {
    
    let safari = SFSafariViewController.self
    let synthesizer = AVSpeechSynthesizer()
    
    let lyrics = [
        "Happy birthday to you",
        "Happy birthday to you",
        "Happy birthday, happy birthday",
        "Happy birthday to you"
    ]

    @IBOutlet var labels: [UILabel]!
    
  
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let utterance = AVSpeechUtterance(string: lyrics[indexPath.row])
        synthesizer.speak(utterance)
        
        switch indexPath.row {
        case 0:
            let controller = SFSafariViewController(url: URL(string:"https://www.ettoday.net/")!)
            present(controller, animated: true, completion: nil)
            
        default:
            break
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        for (i, label) in labels.enumerated() {
            label.text = lyrics[i]
        }
    }

    

   

}
