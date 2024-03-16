//
//  ViewController.swift
//  VoltaVortex
//
//  Created by Manish Bhanushali on 14/10/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var joview: UIView!
    @IBOutlet weak var vwatview: UIView!
    @IBOutlet weak var resview: UIView!
    @IBOutlet weak var ampview: UIView!
    @IBOutlet weak var voltview: UIView!
    @IBOutlet weak var View1: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
    
       // View1.layer.cornerRadius = 30
        voltview.layer.cornerRadius = 20
        resview.layer.cornerRadius = 20
        joview.layer.cornerRadius = 20
        vwatview.layer.cornerRadius = 20
        ampview.layer.cornerRadius = 20
        
        //View1.layer.borderWidth = 5
        //View1.layer.borderColor = UIColor.red.cgColor
        
        ampview.layer.borderColor = UIColor.red.cgColor
        vwatview.layer.borderColor = UIColor.red.cgColor
        joview.layer.borderColor = UIColor.red.cgColor
        resview.layer.borderColor = UIColor.red.cgColor
        voltview.layer.borderColor = UIColor.red.cgColor
        
        
        ampview.layer.borderWidth = 3
        vwatview.layer.borderWidth = 3
        joview.layer.borderWidth = 3
        resview.layer.borderWidth = 3
        voltview.layer.borderWidth = 3
    }

    
    
    @IBAction func btn1(_ sender: Any) {
        
        
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC1")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func btn2(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC2")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func btn3(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC3")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func btn4(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC4")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    @IBAction func btn5(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC5")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    
}

