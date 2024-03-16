//
//  Tphase.swift
//  Electrovert
//
//  Created by Manish Bhanushali on 15/10/23.
//

import UIKit

class Tphase: UIViewController {

    @IBOutlet weak var voltageTextField: UITextField!
    @IBOutlet weak var powerFactorTextField: UITextField!
    @IBOutlet weak var powerLabel: UILabel!
    @IBOutlet weak var apparentPowerLabel: UILabel!
    @IBOutlet weak var currentLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        // Do any additional setup after loading the view.
    }
    

    @IBAction func calculateButtonTapped(_ sender: UIButton) {
    if let voltageText = voltageTextField.text,
        let powerFactorText = powerFactorTextField.text,
    let voltage = Double(voltageText),
    let powerFactor = Double(powerFactorText) { let apparentPower = sqrt(3) * voltage
    let power = apparentPower * powerFactor
    let current = apparentPower / (sqrt(3) * voltage)
    powerLabel.text = "Power (W): \(power)"
    apparentPowerLabel.text = "Apparent Power (VA): \(apparentPower)"
    currentLabel.text = "Current (A): \(current)"
    } else {
    powerLabel.text = "Invalid input"
        apparentPowerLabel.text = "Invalid input"
        currentLabel.text = "Invalid input"
    } }
    }
