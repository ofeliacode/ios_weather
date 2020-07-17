//
//  ViewController.swift
//  weather
//
//  Created by Офелия Баширова on 13.07.2020.
//  Copyright © 2020 Офелия Баширова. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    @IBOutlet weak var celcuisLabel: UILabel!
    
    @IBOutlet weak var foreighetLabel: UILabel!
    
    @IBOutlet weak var slider: UISlider!{
        didSet{
            slider.maximumValue = 100
            slider.minimumValue = 0
            slider.value = 0
        }
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        let temperatureCelsius = Int(round(sender.value))
        celcuisLabel.text = "\(temperatureCelsius)ºC"
        let foreighetTemperature = Int(round((sender.value * 9/5) + 32))
        foreighetLabel.text = "\(foreighetTemperature)ºF"
    }
}

