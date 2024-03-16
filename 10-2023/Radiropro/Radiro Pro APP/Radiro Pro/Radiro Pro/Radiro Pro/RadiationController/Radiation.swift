//
//  Radiation.swift
//  Radiro Pro
//
//  Created by Manish Bhanushali on 23/10/23.
//

import UIKit

class Radiation : UIViewController {
    
    @IBOutlet weak var inputTextField: UITextField!
    @IBOutlet weak var unitSegmentedControl: UISegmentedControl!
    @IBOutlet weak var resultLabel: UILabel!
    
    
    @IBOutlet weak var detaibtn: UIButton!
    
    
    @IBOutlet weak var btnadd: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Radiation"
        btnadd.layer.cornerRadius = 10
        detaibtn.layer.cornerRadius = 5
    }
    
    @IBAction func convertButtonTapped(_ sender: UIButton) {
        convertRadiation()
    }
    
    
    @IBAction func detailsbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Radiationdetail")
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
}
