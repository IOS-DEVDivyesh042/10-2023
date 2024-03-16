//
//  Radiationactdetail.swift
//  Radiro Pro
//
//  Created by Manish Bhanushali on 25/10/23.
//

import UIKit

class Radiationactdetail: UIViewController {
    
    
    
    @IBOutlet weak var view2: UIView!
    
    @IBOutlet weak var text2: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()

        view2.layer.borderColor = UIColor.black.cgColor
        view2.layer.borderWidth = 4
        view2.layer.cornerRadius = 20
        
        
        text2.layer.cornerRadius = 20
        text2.layer.borderWidth = 4
        text2.layer.borderColor = UIColor.black.cgColor
        
        
        
        
        
    }

}
