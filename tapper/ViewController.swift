//
//  ViewController.swift
//  tapper
//
//  Created by Christopher Rathnam on 11/21/15.
//  Copyright © 2015 CRDevelops. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var coinBtn: UIButton!
    @IBOutlet weak var tapsLbl: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps++
        updateTapsLabel()
        
        if isGameOver(){
            restartGame()
        }
        
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        
        
        //handling input validation
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {

            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            coinBtn.hidden = false
            tapsLbl.hidden = false
            
            //This line will grap text and convert it into an Int, placing it in maxTaps
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTapsLabel()
        }
    }
    
    
    //Function to restart game
    func restartGame() {
        maxTaps = 0
        howManyTapsTxt.text = ""
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        coinBtn.hidden = true
        tapsLbl.hidden = true
    }
    
    
    //Function check if game is over
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }else{
            return false
        }
    }
    
    //Function to update Tap Label
    func updateTapsLabel() {
        tapsLbl.text = "\(currentTaps) Taps"
    }
    

    

}

