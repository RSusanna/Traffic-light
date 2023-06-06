//
//  ViewController.swift
//  Traffic-light
//
//  Created by Susanna R on 29.05.2023.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}
class ViewController: UIViewController {
    
    @IBOutlet weak var redLight: UIImageView!
    @IBOutlet weak var yellowLight: UIImageView!
    @IBOutlet weak var greenLight: UIImageView!
    
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    @IBOutlet weak var startButton: UIButton!
    @IBAction func startButtonPressed() {
        
        startButton.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .red:
            greenLight.alpha = lightIsOff
            redLight.alpha = lightIsOn
            currentLight = .yellow
        case .yellow:
            redLight.alpha = lightIsOff
            yellowLight.alpha = lightIsOn
            currentLight = .green
        case .green:
            greenLight.alpha = lightIsOn
            yellowLight.alpha = lightIsOff
            currentLight = .red
        }
    }
}

// Axis - ось то как будут располагаться элементы внутри стэка
// Alignment - выравнивание по краям или центру
// Distribution - распределение
// Spacing - расстояние между элементами внутри стэка
//MARK: - Низ экрана где прямоугольник квадрат и треугольничек
//Align - выравнивание. Здест задаются констрейнты для выравнивания по осям или сторонам род View
//Constraints - правила для расположения и размеров
//
//
//
