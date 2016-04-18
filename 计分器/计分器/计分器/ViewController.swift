//
//  ViewController.swift
//  计分器
//
//  Created by 20131105803 on 16/4/14.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    var ShowNumber = 0
    @IBOutlet weak var LeftTextField: UITextField!
    @IBOutlet weak var RightTextField: UITextField!
    @IBAction func Left3(sender: AnyObject) {
        Touch(3)
    }
    @IBAction func Left2(sender: AnyObject) {
    }
    @IBAction func Left1(sender: AnyObject) {
    }
    @IBAction func Right3(sender: AnyObject) {
    }
    @IBAction func Right2(sender: AnyObject) {
    }
    @IBAction func Right1(sender: AnyObject) {
    }
    
    func Touch(Number:Int){
        ShowNumber = ShowNumber + Number
        //LeftTextField: String = String(Number)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

