//
//  ViewController.swift
//  Light
//
//  Created by vdab cursist on 01/10/2018.
//  Copyright © 2018 appCradle. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
//    @IBOutlet weak var lightButton: UIButton!
    var lightsOn = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateUI()
    }
    
    @IBAction func turnLightsOn(_ sender: UIButton) {
        lightsOn = !lightsOn
        updateUI()
    }
    
    // MARK: - Home made functions
    
    func updateUI(){
        view.backgroundColor = lightsOn ? .white : .black
//        if lightsOn {
//            //            lightsOn = true
//            view.backgroundColor = .white
////            lightButton.setTitle("Lights off", for: .normal)
//            //            indicationLabel.text = "The light is on"
//            //            indicationLabel.textColor = .black
//        } else {
//            //            lightsOn = false
//            view.backgroundColor = .black
////            lightButton.setTitle("Lights on", for: .normal)
//            //            indicationLabel.text = "The light is off"
//            //            indicationLabel.textColor = .white
//        }
    }
    
}

