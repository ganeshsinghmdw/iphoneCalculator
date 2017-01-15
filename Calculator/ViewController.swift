//
//  ViewController.swift
//  Calculator
//
//  Created by Ganesh Singh on 15/01/17.
//  Copyright © 2017 Ganesh Singhmy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var abc = 0
    var opr = 0
    var oper = ""
    var prev = ""
    @IBOutlet weak var lblout: UILabel!
    @IBAction func btnop(_ sender: UIButton) {
        let oper1 = sender.currentTitle
        if(opr==0 )
        {
         oper = sender.currentTitle!
         prev = lblout.text!
            opr=1
            abc=0
            lblout.text="0"
        }
        else if (oper1 == "=")
        {
            if(oper == "+")
            {
                let result = Int(prev)! + Int(lblout.text!)!
                lblout.text = String(result)
            }
            if(oper == "-")
            {
                let result = Int(prev)! - Int(lblout.text!)!
                lblout.text = String(result)
            }
            if(oper == "*")
            {
                let result = Int(prev)! * Int(lblout.text!)!
                lblout.text = String(result)
            }
            if(oper == "/")
            {
                let result = Int(prev)! / Int(lblout.text!)!
                lblout.text = String(result)
            }
            
        }
        
        
        
    }
    @IBAction func Clr(_ sender: UIButton) {
        lblout.text = "0"
        abc=0
        opr=0
        
    }
    @IBAction func numbtn(_ sender: UIButton) {
        if(abc==0)
        {
            lblout.text = sender.currentTitle!
            abc=1
        }
        else{
        lblout.text = lblout.text!+sender.currentTitle!
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

