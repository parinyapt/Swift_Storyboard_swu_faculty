//
//  ViewController.swift
//  assignment6-swu-faculties
//
//  Created by Parinya Termkasipanich on 28/10/2565 BE.
//

import UIKit
import WebKit
import AVKit
import AVFoundation

class ViewController: UIViewController,WKUIDelegate {
    
    var facultyid:Int = 0

    @IBOutlet weak var textviewDetail: UITextView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var webview: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        labelName.text = swu_faculty[facultyid]["name"]!
        textviewDetail.text = swu_faculty[facultyid]["detail"]!
        showWeb(url: swu_faculty[facultyid]["url"]!)
        
    }

    @IBAction func playVideo(_ sender: Any) {
        showVideo(fileName:swu_faculty[facultyid]["vdo"]!)
    }
    
    func showWeb(url:String) {
        let myURL = URL(string: url)
        let myRequest = URLRequest(url: myURL!)
        webview.load(myRequest)
    }
    
    func showVideo(fileName:String) {
        let path = Bundle.main.path(forResource: fileName, ofType: nil)!
        let videoURL = URL(fileURLWithPath: path)
        let player = AVPlayer(url: videoURL)
        let playViewController = AVPlayerViewController()
        playViewController.player = player
        self.present(playViewController, animated: true) {
            playViewController.player!.play()
        }
    }
    
}

