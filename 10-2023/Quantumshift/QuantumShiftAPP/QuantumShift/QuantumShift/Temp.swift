//
//  Temp.swift
//  QuantumShift
//
//  Created by Manish Bhanushali on 16/10/23.
//


import UIKit

class Temp : UIViewController {
    @IBOutlet weak var celsiusTextField: UITextField!
    @IBOutlet weak var fahrenheitLabel: UILabel!
    @IBOutlet weak var kelvinLabel: UILabel!
    @IBOutlet weak var rankineLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fahrenheitLabel.layer.borderWidth = 1
        fahrenheitLabel.layer.borderColor = UIColor.white.cgColor
        
        kelvinLabel.layer.borderWidth = 1
        kelvinLabel.layer.borderColor = UIColor.white.cgColor
        
        rankineLabel.layer.borderWidth = 1
        rankineLabel.layer.borderColor = UIColor.white.cgColor
        
        
        
        
    }

    @IBAction func convertToFahrenheitButtonPressed(_ sender: Any) {
        performTemperatureConversion(fromUnit: "Celsius", toUnit: "Fahrenheit", factor: 1.8, resultLabel: fahrenheitLabel)
    }

    @IBAction func convertToKelvinButtonPressed(_ sender: Any) {
        performTemperatureConversion(fromUnit: "Celsius", toUnit: "Kelvin", factor: 1.0, resultLabel: kelvinLabel)
    }

    @IBAction func convertToRankineButtonPressed(_ sender: Any) {
        performTemperatureConversion(fromUnit: "Celsius", toUnit: "Rankine", factor: 1.8, resultLabel: rankineLabel)
    }

    private func performTemperatureConversion(fromUnit: String, toUnit: String, factor: Double, resultLabel: UILabel) {
        if let inputText = celsiusTextField.text, let inputValue = Double(inputText) {
            let convertedValue = (inputValue * factor)
            resultLabel.text = "\(inputValue) \(fromUnit) is equal to \(convertedValue) \(toUnit)"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}

