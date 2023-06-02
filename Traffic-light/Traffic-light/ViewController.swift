//
//  ViewController.swift
//  Traffic-light
//
//  Created by Susanna R on 29.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIImageView!
    
    @IBOutlet weak var yellowLight: UIImageView!
    
    @IBOutlet weak var greenLight: UIImageView!
    
    @IBOutlet weak var pressToSwitchColor: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Настройка начальной яркости UIImageView
        redLight.alpha = 1.0
        yellowLight.alpha = 1.0
        greenLight.alpha = 1.0
        //    }
        func buttonTapped(_ sender: UIButton) {
            // Изменение яркости в зависимости от состояния кнопки
            if redLight.alpha == 1.0 {
                redLight.alpha = 0.2
            } else {
                redLight.alpha = 1.0
            }
        }
        
    }
}
