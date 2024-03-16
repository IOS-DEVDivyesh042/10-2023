//
//  Radoiationexpodetail.swift
//  Radiro Pro
//
//  Created by Manish Bhanushali on 25/10/23.
//

import UIKit

class Radoiationexpodetail: UIViewController {
    
    @IBOutlet weak var view4: UIView!

    @IBOutlet weak var text3: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        view4.layer.borderColor = UIColor.black.cgColor
        view4.layer.borderWidth = 4
        view4.layer.cornerRadius = 20
        
        
        text3.layer.cornerRadius = 20
        text3.layer.borderWidth = 4
        text3.layer.borderColor = UIColor.black.cgColor
    }
    

    

}
