//
//  ViewController.swift
//  TEXTADD
//
//  Created by 20131105803 on 16/3/17.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Input1: UITextField!
    @IBOutlet weak var Input2: UITextField!
    @IBOutlet weak var Output: UITextField!
    @IBAction func Add(sender: UIButton) {
        var a:Double!=0
        var b:Double!=0
        var c:Double!=0
        if(!Input1.text!.isEmpty){
            a=(Input1.text! as
                NSString).doubleValue
        }
        if(!Input2.text!.isEmpty){
            b=(Input2.text! as
                NSString).doubleValue
        }
        c=a+b
        Output.text="\(c)"
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

