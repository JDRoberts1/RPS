//
//  ViewController.swift
//  RPS
//
//  Created by Nai Code on 2/18/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var newGameButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }
    
    @IBAction
    func unwindToHome(segue: UIStoryboardSegue){
        
        
    }
    
    
    @IBAction func startGame(){
        let vc = (storyboard?.instantiateViewController(withIdentifier: "GameViewController"))!
        self.present(vc, animated: true, completion: nil)
    }


}

