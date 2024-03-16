//
//  Radiatipnabsodetail.swift
//  Radiro Pro
//
//  Created by Manish Bhanushali on 25/10/23.
//

import UIKit

class Radiatipnabsodetail: UIViewController {
    
    
    
    @IBOutlet weak var view4: UIView!
    
    @IBOutlet weak var text4: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view4.layer.borderColor = UIColor.black.cgColor
        view4.layer.borderWidth = 4
        view4.layer.cornerRadius = 20
        
        
        text4.layer.cornerRadius = 20
        text4.layer.borderWidth = 4
        text4.layer.borderColor = UIColor.black.cgColor
        
        
        
        
    }
    

}
