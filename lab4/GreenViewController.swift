//
//  GreenViewController.swift
//  lab4
//
//  Created by Tech on 2024-01-30.
//

import UIKit

class GreenViewController: UIViewController {
    
    
    
    var message:String = "-"
    var handler: ((String)->Void)!
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = message
        
        if let h = handler {
            h("This is the result")
        }
    }
    

}
