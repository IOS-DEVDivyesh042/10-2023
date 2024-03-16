//
//  Radiationdetail.swift
//  Radiro Pro
//
//  Created by Manish Bhanushali on 25/10/23.
//

import UIKit

class Radiationdetail: UIViewController {
    
    @IBOutlet weak var view1: UIView!
    
    
    @IBOutlet weak var text1: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1.layer.borderColor = UIColor.black.cgColor
        view1.layer.borderWidth = 4
        view1.layer.cornerRadius = 20
        
        
        text1.layer.cornerRadius = 20
        text1.layer.borderWidth = 4
        text1.layer.borderColor = UIColor.black.cgColor
        
        
        
        
    }
    
}
