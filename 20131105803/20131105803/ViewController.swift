//
//  ViewController.swift
//  20131105803
//
//  Created by 20131105803 on 16/3/21.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var Calculator = Equal()

    @IBOutlet weak var TextBox: UITextField!
    @IBAction func One(sender: AnyObject) {
        Touch("1")
    }
    @IBAction func Two(sender: AnyObject) {
        Touch("2")
    }
    @IBAction func Three(sender: AnyObject) {
        Touch("3")
    }
    @IBAction func Four(sender: AnyObject) {
        Touch("4")
    }
    @IBAction func Five(sender: AnyObject) {
        Touch("5")
    }
    @IBAction func Six(sender: AnyObject) {
        Touch("6")
    }
    @IBAction func Seven(sender: AnyObject) {
        Touch("7")
    }
    @IBAction func Eight(sender: AnyObject) {
        Touch("8")
    }
    @IBAction func Nine(sender: AnyObject) {
        Touch("9")
    }
    @IBAction func Zero(sender: AnyObject) {
        Touch("0")
    }
    @IBAction func Point(sender: AnyObject) {
        Touch(".")
    }
    @IBAction func AllClaer(sender: AnyObject) {
    }
    @IBAction func PlusMinus(sender: AnyObject) {
    }
    @IBAction func Percent(sender: AnyObject) {
        Calculator.SetAlgorthm(.percent)
        equal()
    }
    @IBAction func Division(sender: AnyObject) {
        Calculator.SetAlgorthm(.division)
        equal()
    }
    @IBAction func Multipled(sender: AnyObject) {
        Calculator.SetAlgorthm(.multipled)
        equal()
    }
    @IBAction func Reduction(sender: AnyObject) {
        Calculator.SetAlgorthm(.reduction)
        equal()
    }
    @IBAction func Add(sender: AnyObject) {
        Calculator.SetAlgorthm(.add)
        equal()
    }
    @IBAction func Equal(sender: AnyObject) {
        equal()
    }
    
    func Touch(Number:String){
    
    }
    
    func equal() {
        
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

