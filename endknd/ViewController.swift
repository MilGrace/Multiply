//
//  ViewController.swift
//  endknd
//
//  Created by  on 3/2/22.
//

import UIKit

class ViewController: UIViewController
{

    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    
    
    
    @IBAction func multiplyPressed(_ sender: Any)
    {
        var val1 = Double(num1.text!) ?? 0
        var val2 = Double(num2.text!) ?? 0
        var finalval = val1 * val2
        var finalvalS = String(finalval)
        outputLabel.text = finalvalS
    }
    

}

