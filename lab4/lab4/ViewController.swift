//
//  ViewController.swift
//  lab4
//
//  Created by Tech on 2024-01-30.
//

import UIKit

class ViewController: UIViewController {

    private var _res:String!
    
    var Result:String{
        get{
            return _res
        }
        set{
            _res = newValue
            print(_res)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func setResult(r:String){
        Result = r
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        switch segue.identifier{
        case "green":
            if let d = segue.destination as? GreenViewController{
                d.message = "Hi it is me!"
                d.handler = {self.Result = $0}
            }
        case "orange":
            return
        case "second":
            if let d = segue.destination as? GreenViewController{
                d.message = "This is the second link"
            }
        default:
            return
        }
        
    }
    
    @IBAction func unwindToMain(segue:UIStoryboardSegue){}

}

