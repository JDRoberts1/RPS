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
    
    @IBOutlet weak var EndGameButton: UIButton!
    
    @IBOutlet weak var Player1Name: UILabel!
    @IBOutlet weak var Player1Choice: UIImageView!
    @IBOutlet weak var Player1ScoreLabel: UILabel!
    
    @IBOutlet weak var Player2Name: UILabel!
    @IBOutlet weak var Player2Choice: UIImageView!
    @IBOutlet weak var Player2ScoreLabel: UILabel!
    
    
    let playText = "Play"
    var isPlaying = false
    var player1Score = 0
    var player2Score = 0
    var playersChoice = 0
    var bot = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let player2NameLabel = "Bot"
        Player2Name.text = player2NameLabel
        
        Player1Choice.isHidden = true
        Player2Choice.isHidden = true
        
    }
    
    
    func botSelect() -> Int{
        return Int.random(in: 1...3)
    }
    
    func displayChoices(){
        bot = botSelect()
        
        
        Player1Choice.isHidden = false
        Player2Choice.isHidden = false
        
        showPlayer1()
        showPlayer2()
        
        
        decideWinner()
        
        resetBoard()
    }
    
    func showPlayer1(){
        if(playersChoice == 1){
            Player1Choice.image = UIImage(named: "rock")
        }
        else if(playersChoice == 2){
            Player1Choice.image = UIImage(named: "paper")
        }
        else if(playersChoice == 3){
            Player1Choice.image = UIImage(named: "scissors")
        }
    }
    
    func showPlayer2(){
        
        if(bot == 1){
            Player2Choice.image = UIImage(named: "rock")
        }
        else if(bot == 2){
            Player2Choice.image = UIImage(named: "paper")
        }
        else if(bot == 3){
            Player2Choice.image = UIImage(named: "scissors")
        }
        
    }
    
    func decideWinner(){
        if(playersChoice == 1){
            if(bot == 3){
                player1Score+=1
                Player1ScoreLabel.text = String(player1Score)
            }
            if(bot == 2){
                player2Score+=1
                Player2ScoreLabel.text = String(player2Score)
            }
        }
        else if(playersChoice == 2){
            if(bot == 1){
                player1Score+=1
                Player1ScoreLabel.text = String(player1Score)
            }
            if(bot == 3){
                player2Score+=1
                Player2ScoreLabel.text = String(player2Score)
            }
        }
        else if(playersChoice == 3){
            if(bot == 1){
                player2Score+=1
                Player2ScoreLabel.text = String(player2Score)
            }
            if(bot == 2){
                player1Score+=1
                Player1ScoreLabel.text = String(player1Score)
            }
        }
    }
    
    
    func resetBoard() {
        Player1Choice.isHidden = true
        Player2Choice.isHidden = true
    }
    
    
    @IBAction
    func gameControl(){
        resetBoard()
    }
    
    @IBAction func backToHome(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "unwindToHome", sender: self)
        
    }
    
    
    
    @IBAction func player11Choice(_ sender: Any) {
        let choice = sender as! UIButton
        
        playersChoice = choice.tag
        displayChoices()
        
    }
}
