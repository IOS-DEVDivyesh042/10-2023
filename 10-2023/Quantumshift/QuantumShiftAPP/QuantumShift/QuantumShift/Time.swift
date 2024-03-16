//
//  Time.swift
//  QuantumShift
//
//  Created by Manish Bhanushali on 16/10/23.
//

import UIKit

class Time: UIViewController {
    @IBOutlet weak var hoursTextField: UITextField!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var daysLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        minutesLabel.layer.borderWidth = 1
        minutesLabel.layer.borderColor = UIColor.white.cgColor
        
        secondsLabel.layer.borderWidth = 1
        secondsLabel.layer.borderColor = UIColor.white.cgColor
        
        daysLabel.layer.borderWidth = 1
        daysLabel.layer.borderColor = UIColor.white.cgColor
        
        
        
        
    }
    
    
    @IBAction func convertToMinutesButtonPressed(_ sender: Any) {
        performTimeConversion(fromUnit: "hours", toUnit: "minutes", factor: 60.0, resultLabel: minutesLabel)
    }

    @IBAction func convertToSecondsButtonPressed(_ sender: Any) {
        performTimeConversion(fromUnit: "hours", toUnit: "seconds", factor: 3600.0, resultLabel: secondsLabel)
    }

    @IBAction func convertToDaysButtonPressed(_ sender: Any) {
        performTimeConversion(fromUnit: "hours", toUnit: "days", factor: 1/24.0, resultLabel: daysLabel)
    }

    private func performTimeConversion(fromUnit: String, toUnit: String, factor: Double, resultLabel: UILabel) {
        if let inputText = hoursTextField.text, let inputValue = Double(inputText) {
            let convertedValue = inputValue * factor
            resultLabel.text = "\(inputValue) \(fromUnit) is equal to \(convertedValue) \(toUnit)"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}
