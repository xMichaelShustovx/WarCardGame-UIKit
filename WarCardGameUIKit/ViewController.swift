//
//  ViewController.swift
//  WarCardGameUIKit
//
//  Created by Michael Shustov on 13.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var leftImageView: UIImageView!
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var playerScoreLabel: UILabel!
    
    @IBOutlet weak var cpuScoreLabel: UILabel!
    
    var playerScore = 0
    var cpuScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func dealButton(_ sender: Any) {
        
        let leftCard = Int.random(in: 2...14)
        let rightCard = Int.random(in: 2...14)
        
        leftImageView.image = UIImage(named: "card\(leftCard)")
        
        rightImageView.image = UIImage(named: "card\(rightCard)")
        
        if leftCard > rightCard {
            
            playerScore += 50
            
            playerScoreLabel.text = String(playerScore)
        }
        else if leftCard < rightCard {
            
            cpuScore += 50
            
            cpuScoreLabel.text = String(cpuScore)
        }
    }
}

