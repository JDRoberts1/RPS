//
//  GameViewController.swift
//  RPS
//
//  Created by Nai Code on 2/18/24.
//

import Foundation
import UIKit

class GameViewController: UIViewController{
    
    @IBOutlet var rock: UIButton!
    @IBOutlet var paper: UIButton!
    @IBOutlet var scissors: UIButton!
    
    @IBOutlet weak var RestartGameButton: UIButton!
    @IBOutlet weak var EndGameButton: UIButton!
    
    @IBOutlet weak var Player1Name: UILabel!
    @IBOutlet weak var Player1Choice: UIImageView!
    @IBOutlet weak var Player1Score: UILabel!
    
    @IBOutlet weak var Player2Name: UILabel!
    @IBOutlet weak var Player2Choice: UIImageView!
    @IBOutlet weak var Player2Score: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let player2NameLabel = "Bot"
        Player2Name.text = player2NameLabel
    }
    
    
    
}
