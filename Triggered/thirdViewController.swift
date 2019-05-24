//
//  thirdViewController.swift
//  Triggered
//
//  Created by Cindy Chandra on 22/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit
import AVFoundation

class thirdViewController: UIViewController {
    
    var audioPlayer = AVAudioPlayer()
    var audiooPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Mosquito", ofType: "m4a")!))
            
            audioPlayer.prepareToPlay()
            
        }
        
        catch {
            print(error)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func playMosquito(_ sender: Any) {
        audioPlayer.play()
        
    }
    
}
