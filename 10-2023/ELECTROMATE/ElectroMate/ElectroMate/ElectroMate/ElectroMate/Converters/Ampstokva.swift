

import UIKit


class Ampstokva : UIViewController {
@IBOutlet weak var ampsTextField: UITextField!
    @IBOutlet weak var voltageTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    
        override func viewDidLoad() {
                super.viewDidLoad()
            
           
            navigationItem.title = "Amps To KVA"
            
        }
@IBAction func calculateButtonTapped(_ sender: UIButton) {
if let ampsText = ampsTextField.text,
    let voltsText = voltageTextField.text,
 let amps = Double(ampsText),
   let volts = Double(voltsText)
    {
    let kVA = (amps * volts) / 1000
   resultLabel.text = "kVA: \(kVA)"
}
    else
    {
resultLabel.text = "Invalid input" }
}
    
}
