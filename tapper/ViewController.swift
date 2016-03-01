//
//  ViewController.swift
//  tapper
//
//  Created by Hasti Sahabi on 3/1/16.
//  Copyright © 2016 Hasti Sahabi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Properties
    var maxTaps = 0
    var currentTaps = 0
    
    //Outlets
    @IBOutlet weak var logoImg: UIImageView!    //implicitely unwrapped variable
    @IBOutlet weak var howManyTapsTxt: UITextField!
    @IBOutlet weak var playBtn: UIButton!
    
    @IBOutlet weak var tapBtn: UIButton!
    @IBOutlet weak var tapsLabel: UILabel!
    
    @IBAction func onCoinTapped(sender: UIButton!){
        currentTaps++
        updateTapsLabel()
        if isGameOver() {
            restartGame()
        }
    }
    
    @IBAction func onPlayBtnPressed(sender: UIButton!){
        
        if howManyTapsTxt.text != nil && howManyTapsTxt.text != "" {
            
            logoImg.hidden = true
            playBtn.hidden = true
            howManyTapsTxt.hidden = true
            
            tapBtn.hidden = false
            tapsLabel.hidden = false
        
            maxTaps = Int(howManyTapsTxt.text!)!
            currentTaps = 0
            updateTapsLabel()
        }
        
    }
    
    func restartGame () {
        maxTaps = 0
        howManyTapsTxt.text = nil
        
        logoImg.hidden = false
        playBtn.hidden = false
        howManyTapsTxt.hidden = false
        
        tapBtn.hidden = true
        tapsLabel.hidden = true
        
    }
    
    func isGameOver() -> Bool {
        if currentTaps >= maxTaps {
            return true
        }
        return false
    }
    
    func updateTapsLabel () {
        tapsLabel.text = "\(currentTaps) Taps"
    }
    

}

