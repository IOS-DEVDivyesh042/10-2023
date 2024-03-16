//
//  weight.swift
//  QuantumShift
//
//  Created by Manish Bhanushali on 16/10/23.
//

import UIKit

class weight : UIViewController {
    @IBOutlet weak var kilogramsTextField: UITextField!
    @IBOutlet weak var poundsLabel: UILabel!
    @IBOutlet weak var ouncesLabel: UILabel!
    @IBOutlet weak var gramsLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poundsLabel.layer.borderWidth = 1
        poundsLabel.layer.borderColor = UIColor.white.cgColor
        
        ouncesLabel.layer.borderWidth = 1
        ouncesLabel.layer.borderColor = UIColor.white.cgColor
        
        gramsLabel.layer.borderWidth = 1
        gramsLabel.layer.borderColor = UIColor.white.cgColor
        
        
        
        
    }
    

    @IBAction func convertToPoundsButtonPressed(_ sender: Any) {
        performWeightConversion(fromUnit: "kilograms", toUnit: "pounds", factor: 2.20462, resultLabel: poundsLabel)
    }

    @IBAction func convertToOuncesButtonPressed(_ sender: Any) {
        performWeightConversion(fromUnit: "kilograms", toUnit: "ounces", factor: 35.274, resultLabel: ouncesLabel)
    }

    @IBAction func convertToGramsButtonPressed(_ sender: Any) {
        performWeightConversion(fromUnit: "kilograms", toUnit: "grams", factor: 1000.0, resultLabel: gramsLabel)
    }

    private func performWeightConversion(fromUnit: String, toUnit: String, factor: Double, resultLabel: UILabel) {
        if let inputText = kilogramsTextField.text, let inputValue = Double(inputText) {
            let convertedValue = inputValue * factor
            resultLabel.text = "\(inputValue) \(fromUnit) is equal to \(convertedValue) \(toUnit)"
        } else {
            resultLabel.text = "Invalid input"
        }
    }
}
