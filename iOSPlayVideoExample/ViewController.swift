//
//  ViewController.swift
//  iOSPlayVideoExample
//
//  Created by moxDroid on 2019-03-19.
//  Copyright © 2019 moxDroid. All rights reserved.
//

import UIKit
import AVKit

class ViewController: UIViewController {

    var video = AVPlayer()
    var videoPlayer = AVPlayerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func btnPlayAction(_ sender: UIBarButtonItem) {
        if let path = Bundle.main.path(forResource: "Toronto", ofType: "mp4"){
            
            self.video = AVPlayer(url: URL(fileURLWithPath: path))
            self.videoPlayer = AVPlayerViewController()
            self.videoPlayer.player = video
            
            self.present(self.videoPlayer, animated: true, completion: {
                self.video.play()
            })
        }
        
    }


}

