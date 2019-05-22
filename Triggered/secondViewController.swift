
//  secondViewController.swift
//  Triggered
//
//  Created by Cindy Chandra on 20/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.


import UIKit

class secondViewController: UIViewController {
    
    @IBOutlet weak var annoyingFace: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(move))
        
        annoyingFace.addGestureRecognizer(tapGesture)
    }
    @objc func move() {
        UIView.animate(withDuration: 0.4, delay: 0.2, options: .curveLinear, animations: self.changePosition) { (isFinished) in
            
        }    }
    
    func changePosition(){
        let xCoordinate = Int.random(in:1...300)
        let yCoordinate = Int.random(in:1...700)
        annoyingFace.center = CGPoint(x: xCoordinate, y: yCoordinate)
        
    }
}
extension CGFloat {
    static func random() -> CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

