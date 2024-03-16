//
//  ViewController.swift
//  PowerPivot
//
//  Created by Manish Bhanushali on 28/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var userbtn: UIButton!
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    
    @IBOutlet weak var view11: UIView!
    
    
    @IBOutlet weak var view22: UIView!
    
    
    @IBOutlet weak var btn1: UIButton!
    
    
    @IBOutlet weak var btn2: UIButton!
    
    
    @IBOutlet weak var btn3: UIButton!
    
    @IBOutlet weak var btn4: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.cornerRadius = 20
        view1.layer.borderColor = UIColor.blue.cgColor
        view1.layer.borderWidth = 4
        
        view2.layer.cornerRadius = 20
        view2.layer.borderColor = UIColor.blue.cgColor
        view2.layer.borderWidth = 4
        
        view11.layer.cornerRadius = 20
        view11.layer.borderColor = UIColor.purple.cgColor
        view11.layer.borderWidth = 4
        
        view22.layer.cornerRadius = 20
        view22.layer.borderColor = UIColor.purple.cgColor
        view22.layer.borderWidth = 4
        
        userbtn.layer.cornerRadius = 10
        
        
        
        
        
        
        
        
        
        
        
        
        // Do any additional setup after loading the view.
    }
        
    
    @IBAction func btnn1(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Flybackvc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
        
        
    }
    
    
    @IBAction func btnn2(_ sender: Any) {
        
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "Cyclovc")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func btnn3(_ sender: Any) {
        
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC3")
        self.navigationController?.pushViewController(nextvc!, animated: true)
    }
    
    
    @IBAction func btnn4(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "VC5")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
    }
    
    
    @IBAction func btnuser(_ sender: Any) {
        let nextvc = storyboard?.instantiateViewController(withIdentifier: "UserGuide")
        self.navigationController?.pushViewController(nextvc!, animated: true)
        
    }
    
    
    

}

