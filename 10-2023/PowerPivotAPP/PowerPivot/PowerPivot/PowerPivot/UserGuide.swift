//
//  UserGuide.swift
//  PowerPivot
//
//  Created by Manish Bhanushali on 28/10/23.
//

import UIKit

class UserGuide: UIViewController {
    
    
    @IBOutlet weak var detailtxt: UITextView!
    
    @IBOutlet weak var lbluser: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        detailtxt.layer.cornerRadius = 20
        detailtxt.layer.borderWidth = 5
        detailtxt.layer.borderColor = UIColor.purple.cgColor
            
       
    }
    


}
