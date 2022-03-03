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
        emojis.alpha = 0
    }
    
    @IBOutlet weak var outputLabel: UILabel!
    @IBOutlet weak var num1: UITextField!
    @IBOutlet weak var num2: UITextField!
    @IBOutlet weak var emojis: UIImageView!
    
    
    
    @IBAction func multiplyPressed(_ sender: Any)
    {
        var val1 = Double(num1.text!) ?? 0
        var val2 = Double(num2.text!) ?? 0
        var finalval = val1 * val2
        var finalvalS = String(finalval)
        var finalvalInt = Int(finalval+0.5)
        outputLabel.text = finalvalS
        num1.resignFirstResponder()
        num2.resignFirstResponder()
        if finalvalInt%2 == 0
        {
            emojis.image = UIImage (named: "laugh1")
            emojis.alpha = 1
        }
        else
        {
            emojis.image = UIImage (named: "laugh2")
        }
    }
    
    @IBAction func clearButton(_ sender: Any)
    {
        outputLabel.text = ""
        num1.text = ""
        num2.text = ""
    }
    
    

}

