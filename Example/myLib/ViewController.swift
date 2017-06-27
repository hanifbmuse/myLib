//
//  ViewController.swift
//  myLib
//
//  Created by hanif_bmuse on 06/27/2017.
//  Copyright (c) 2017 hanif_bmuse. All rights reserved.
//

import UIKit
import myLib

class ViewController: UIViewController {

    var isBlinking = false
    let blinkingLabel = BlinkLabel(frame: CGRect(x: 10, y: 20, width: 200, height: 30))

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup the BlinkingLabel
        blinkingLabel.text = "I blink!"
        blinkingLabel.font = UIFont.systemFont(ofSize: 20)
        view.addSubview(blinkingLabel)
        blinkingLabel.startBlinking()
        isBlinking = true
        
        // Create a UIButton to toggle the blinking
        let toggleButton = UIButton();
        toggleButton.setTitle("Toggle Blinking", for: .normal)
        toggleButton.setTitleColor(UIColor.red, for: .normal)
        toggleButton.addTarget(self, action: #selector(ViewController.toggleBlinking), for: .touchUpInside)
        view.addSubview(toggleButton)
    }
    
    func toggleBlinking() {
        if (isBlinking) {
            blinkingLabel.stopBlinking()
        } else {
            blinkingLabel.startBlinking()
        }
        isBlinking = !isBlinking
    }


}

