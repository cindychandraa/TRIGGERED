//
//  ViewController.swift
//  Triggered
//
//  Created by Cindy Chandra on 20/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var audiooPlayer = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            audiooPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: Bundle.main.path(forResource: "Teriak", ofType: "m4a")!))
            
            audiooPlayer.prepareToPlay()
            
        }
            
        catch {
            print(error)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playScream(_ sender: Any) {
        audiooPlayer.play()
        
        }
    
        
    }


