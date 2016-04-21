//
//  ViewController.swift
//  计分器
//
//  Created by 20131105803 on 16/4/14.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var ShowNumber = 0
    var ShowNumber2 = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var LeftTextField: UITextField!
    @IBOutlet weak var RightTextField: UITextField!
    @IBAction func Left3(sender: AnyObject) {
        Touch(3)
    }
    @IBAction func Left2(sender: AnyObject) {
        Touch(2)
    }
    @IBAction func Left1(sender: AnyObject) {
        Touch(1)
    }
    @IBAction func Right3(sender: AnyObject) {
        Touch2(3)
    }
    @IBAction func Right2(sender: AnyObject) {
        Touch2(2)
    }
    @IBAction func Right1(sender: AnyObject) {
        Touch2(1)
    }
    @IBAction func Pause(sender: AnyObject) {
    }
    @IBAction func Reset(sender: AnyObject) {
    }
    @IBAction func Cancel(sender: AnyObject) {
    }
    
    func Touch(Number:Int){
        ShowNumber=ShowNumber + Number
        let Display:String=String(ShowNumber)
        LeftTextField.text=Display
    }
    func Touch2(Number:Int){
        ShowNumber2=ShowNumber2 + Number
        let Display:String=String(ShowNumber2)
        RightTextField.text=Display
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        //http://www.cocoachina.com/industry/20140709/9077.html
    }


}

