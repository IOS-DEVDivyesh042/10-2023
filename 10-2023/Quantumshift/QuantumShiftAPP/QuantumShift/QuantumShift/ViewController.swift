//
//  ViewController.swift
//  QuantumShift
//
//  Created by Manish Bhanushali on 16/10/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    
    @IBOutlet weak var view3: UIView!
    
    
    @IBOutlet weak var view9: UIView!
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var view10: UIView!
    
    @IBOutlet weak var view8: UIView!
    
    @IBOutlet weak var view5: UIView!
    
    
    @IBOutlet weak var view7: UIView!
    
    
    @IBOutlet weak var view6: UIView!
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view1.layer.cornerRadius = 20
        view3.layer.cornerRadius = 20
        view6.layer.cornerRadius = 20
        view7.layer.cornerRadius = 20
        view9.layer.cornerRadius = 20
        
        // Do any additional setup after loading the view.
    }


    @IBAction func feetbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "feetvc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    
    @IBAction func distancebtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Distance")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
    }
    
    
    @IBAction func timebtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Temp")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func weightbtn(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "weight")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func timee(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Time")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    
    
    
    
    
    
    
    
}







