//
//  ViewController.swift
//  screen
//
//  Created by Manish Bhanushali on 22/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var view1: UIView!
    
    @IBOutlet weak var view2: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view1.layer.cornerRadius = 20
        view2.layer.cornerRadius = 20
        // Do any additional setup after loading the view.
    }


}

