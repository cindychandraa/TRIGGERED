//
//  secondViewController.swift
//  Triggered
//
//  Created by Cindy Chandra on 20/05/19.
//  Copyright © 2019 Cindy Chandra. All rights reserved.
//

import UIKit

class secondViewController: UIViewController, UIGestureRecognizerDelegate {
    
    var panGesture = UIPanGestureRecognizer()
    var beginLocation = CGPoint(x: 0, y: 0)
    var starBeginLocation = CGPoint(x: 0, y: 0)
    var locationDifference = CGPoint(x: 0, y: 0)
    
    @IBOutlet weak var star: UIImageView!
    
    override func viewDidLoad() {
    super.viewDidLoad()
     
        star.center = view.center
        panGesture = UIPanGestureRecognizer(target: self, action: #selector(moveStar))
        star.isUserInteractionEnabled = true
        view.addGestureRecognizer(panGesture)
    }
    @objc func moveStar(){
        
        if panGesture.state == .began{
            beginLocation = panGesture.location(in: view)
            starBeginLocation = star.center
        }
        locationDifference.x = panGesture.location(in: view).x - beginLocation.x
        locationDifference.y = panGesture.location(in: view).y - beginLocation.y
        print(locationDifference)

        
        
        star.center.y = starBeginLocation.y - locationDifference.y
        star.center.x = starBeginLocation.x - locationDifference.x
        
        if (star.center.y < 0){
            star.center.y = 0
        } else if (star.center.y > view.frame.height){
            star.center.y = view.frame.height
        }
        
        if (star.center.x < 0){
            star.center.x = 0
        } else if (star.center.x > view.frame.width){
            star.center.x = view.frame.width
        }
        

        
        
    }
    ////    @IBOutlet weak var starButton: UIButton!
////    @IBOutlet weak var timerLabel: UILabel!
////
////    override func viewDidLoad() {
////        super.viewDidLoad()
////        // Do any additional setup after loading the view.
////        }
////
////
////    func changePosition(){
////        let xCoordinate = Int.random(in:1...300)
////        let yCoordinate = Int.random(in:1...800)
////        UIView.animate(withDuration: 0.5) {
////            self.starButton.center = CGPoint(x: xCoordinate, y: yCoordinate)
////            self.starButton.frame.origin.y = CGFloat(yCoordinate)
////            self.starButton.frame.origin.x = CGFloat(xCoordinate)
////        }
//
//
//    }
//
//    @IBAction func starButtonAction(_ sender: Any) {
//       changePosition()
//
//    }
//
    
        
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
