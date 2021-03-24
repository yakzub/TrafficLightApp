//
//  ViewController.swift
//  TrafficLightApp
//
//  Created by Yakov on 24.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var redColorView: UIView!
    @IBOutlet weak var yellowColorView: UIView!
    @IBOutlet weak var greenColorView: UIView!
    @IBOutlet weak var textStartTrafficButton: UIButton!
    
    var count = 0
    let lightAlpha: CGFloat = 0.3
    let darkAlpha: CGFloat = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redColorView.layer.cornerRadius = redColorView.frame.width / 2
        yellowColorView.layer.cornerRadius = yellowColorView.frame.width / 2
        greenColorView.layer.cornerRadius = greenColorView.frame.width / 2
        textStartTrafficButton.layer.cornerRadius = 15

        
        redColorView.alpha = lightAlpha
        yellowColorView.alpha = lightAlpha
        greenColorView.alpha = lightAlpha
        
        textStartTrafficButton.setTitle("Start", for: .normal)
    }

    @IBAction func startTrafficButton(_ sender: Any) {
        
        textStartTrafficButton.setTitle("Next", for: .normal)
               
               switch count {
               case 0:
                   redColorView.alpha = darkAlpha
                   count = 1
               case 1:
                   yellowColorView.alpha = darkAlpha
                   redColorView.alpha = lightAlpha
                   count = 2
               case 2:
                   greenColorView.alpha = darkAlpha
                   yellowColorView.alpha = lightAlpha
                   count = 3
               default:
                   count = 0
                   redColorView.alpha = lightAlpha
                   yellowColorView.alpha = lightAlpha
                   greenColorView.alpha = lightAlpha
                   textStartTrafficButton.setTitle("Start", for: .normal)
          
               }
        
    }
    
    
}

