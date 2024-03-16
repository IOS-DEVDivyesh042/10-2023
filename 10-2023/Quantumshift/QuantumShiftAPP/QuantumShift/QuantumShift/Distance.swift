//
//  Distance.swift
//  QuantumShift
//
//  Created by Manish Bhanushali on 16/10/23.
//

import UIKit

class Distance : UIViewController {
    @IBOutlet weak var kilometerTextField: UITextField!
    @IBOutlet weak var convertedLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        convertedLabel.layer.borderWidth = 1
        convertedLabel.layer.borderColor = UIColor.white.cgColor
    }

    @IBAction func convertToMetersButtonPressed(_ sender: Any) {
        performConversion(factor: 1000, unit: "meters")
    }

    @IBAction func convertToMilesButtonPressed(_ sender: Any) {
        performConversion(factor: 0.621371, unit: "miles")
    }

    @IBAction func convertToYardsButtonPressed(_ sender: Any) {
        performConversion(factor: 1094, unit: "yards")
    }

    private func performConversion(factor: Double, unit: String) {
        if let inputText = kilometerTextField.text, let inputValue = Double(inputText) {
            let convertedValue = inputValue * factor
            convertedLabel.text = String(format: "%.2f \(unit)", convertedValue)
        } else {
            convertedLabel.text = "Invalid input"
        }
    }
}

