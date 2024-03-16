//
//  RadiationExpo.swift
//  Radiro Pro
//
//  Created by Manish Bhanushali on 23/10/23.
//

import UIKit

class RadiationExpo : UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var unitSegmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var btnadd: UIButton!

    @IBOutlet weak var detailbtns: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Radiation-Exposure"
        btnadd.layer.cornerRadius = 20
        resultLabel.layer.cornerRadius = 10
        resultLabel.layer.borderWidth = 2
        resultLabel.layer.borderColor = UIColor.white.cgColor
        detailbtns.layer.cornerRadius = 5
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        convertRadiation()
    }
    
    
    @IBAction func btndetailssss(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Radoiationexpodetail")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
    }
    
    
    
    
    
    
    func convertRadiation() {
        guard let inputText = inputTextField.text, let inputValue = Double(inputText) else {
            resultLabel.text = "Invalid input"
            return
        }
        
        let selectedUnit = unitSegmentedControl.selectedSegmentIndex
        var result: Double = 0.0

        switch selectedUnit {
        case 0: 
            result = inputValue * 1.0
        case 1:
            result = inputValue * 1.0
        case 2:
            result = inputValue * 0.01
        case 3:
            result = inputValue * 0.008741
        case 4:
            result = inputValue * 0.000001
        default:
            break
        }

        resultLabel.text = String(format: "%.4f", result)
    }
    
   
    func convertExposure() {
        guard let inputText = inputTextField.text, let inputValue = Double(inputText) else {
            resultLabel.text = "Invalid input"
            return
        }
        
        let selectedUnit = unitSegmentedControl.selectedSegmentIndex
        var result: Double = 0.0

        switch selectedUnit {
        case 0:
            result = inputValue * 1000
        case 1:
            result = inputValue * 1000
        case 2:
            result = inputValue * 100
        case 3:
            result = inputValue
        case 4:
            result = inputValue * 0.001
        default:
            break
        }

        resultLabel.text = String(format: "%.4f", result)
    }
}
