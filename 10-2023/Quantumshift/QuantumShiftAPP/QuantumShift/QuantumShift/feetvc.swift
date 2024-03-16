//
//  feetvc.swift
//  QuantumShift
//
//  Created by Manish Bhanushali on 16/10/23.
//

import UIKit

class feetvc : UIViewController {
    @IBOutlet weak var lengthTextField: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertedLabel.layer.borderWidth = 1
        convertedLabel.layer.borderColor = UIColor.white.cgColor
    }

    @IBAction func convertToMetersButtonPressed(_ sender: Any) {
        performConversion(factor: 0.3048, unit: "meters")
    }
    
    @IBAction func convertToYardsButtonPressed(_ sender: Any) {
        performConversion(factor: 0.333333, unit: "yards")
    }
    
    @IBAction func convertToInchesButtonPressed(_ sender: Any) {
        performConversion(factor: 12.0, unit: "inches")
    }
    
    private func performConversion(factor: Double, unit: String) {
        if let inputText = lengthTextField.text, let inputValue = Double(inputText) {
            let convertedValue = inputValue * factor
            convertedLabel.text = String(format: "%.2f \(unit)", convertedValue)
        } else {
            convertedLabel.text = "Invalid input"
        }
    }
}

