//
//  ViewController.swift
//  MagicBall
//
//  Created by SLV on 27.02.2024.
//

import UIKit


class ViewController: UIViewController {

    
    var ballAnswersArray = ["Yes","No","Ask again later","No idea","Maybe"]
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
         
        
    }

    @IBOutlet weak var magicBall: UIImageView!
    @IBOutlet weak var ballAnswerLabel: UILabel!

    
    @IBAction func askButton(_ sender: UIButton) {
 
        let ballAnswerSelect:Int = Int.random(in: 0...4)
        ballAnswerLabel.text = ballAnswersArray[ballAnswerSelect]
        
        var disableMyButton = sender as UIButton
        disableMyButton.isEnabled = false
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.ballAnswerLabel.text = "Another question?"
            print("tic")
            disableMyButton.isEnabled = true
        }
    }
}

