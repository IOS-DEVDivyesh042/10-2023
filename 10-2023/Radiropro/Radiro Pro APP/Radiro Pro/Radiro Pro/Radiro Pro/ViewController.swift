//
//  ViewController.swift
//  Radiro Pro
//
//  Created by Manish Bhanushali on 23/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var view1: UIView!
    
    
    @IBOutlet weak var btn1: UIButton!
    
    
    @IBOutlet weak var btn2: UIButton!
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.cornerRadius = 30
        btn1.layer.cornerRadius = 20
        btn2.layer.cornerRadius = 20
        btn3.layer.cornerRadius = 20
        btn4.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func radioexpobtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "RadiationExpo")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
    }
    
    @IBAction func radiationbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Radiation")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func radioabsobtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "RadiationAbso")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func radiactbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "RadiationAct")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    
    
    


}

