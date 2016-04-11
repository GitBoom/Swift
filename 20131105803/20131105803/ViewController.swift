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
    var ShowCache = ""
    var Cache = 0.0
    var Cache2:Double?
    var PointNumber = 0;

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
        PointNumber = 0
        ShowCache = ""
        Cache = 0.0
        Cache2 = nil
        Calculator.SetAlgorthm(.NoChoose)
        self.TextBox.text = "0"
    }
    @IBAction func PlusMinus(sender: AnyObject) {
        ShowCache = "-"+ShowCache
        TextBox.text = ShowCache
    }
    @IBAction func Percent(sender: AnyObject) {
        Calculator.SetAlgorthm(.percent)
        equal()
    }
    @IBAction func Division(sender: AnyObject) {
        if Calculator.ReadAlgorthm() != .division{
            equal()
            Calculator.SetAlgorthm(.division)
            return
        }
        Calculator.SetAlgorthm(.division)
        equal()
    }
    @IBAction func Multipled(sender: AnyObject) {
        if Calculator.ReadAlgorthm() != .multipled{
            equal()
            Calculator.SetAlgorthm(.multipled)
            return
        }
        Calculator.SetAlgorthm(.multipled)
        equal()
    }
    @IBAction func Reduction(sender: AnyObject) {
        if Calculator.ReadAlgorthm() != .reduction{
        equal()
        Calculator.SetAlgorthm(.reduction)
        return
        }
        Calculator.SetAlgorthm(.reduction)
        equal()
    }
    @IBAction func Add(sender: AnyObject) {
        if Calculator.ReadAlgorthm() != .add{
        equal()
        Calculator.SetAlgorthm(.add)
        return
        }
        Calculator.SetAlgorthm(.add)
        equal()
    }
    @IBAction func Result(sender: AnyObject) {
        equal()
    }
    
    func Touch(Number:String){
        if Number == "."{
            PointNumber++
        }
        if Number == "." && PointNumber > 1{
            return
        }
        ShowCache += Number
        self.TextBox.text = ShowCache

    }
    
    func equal() {
        PointNumber = 0
        var result = ""
        
        if !ShowCache.isEmpty {
            let temp = ShowCache as NSString
            Cache = temp.doubleValue
            ShowCache = ""
        }
        let temp = Cache
        
        if let TheNumber1 = Cache2{
            
            result = Calculator.求结果(Number1: TheNumber1, Number2: temp)
            TextBox.text = result
            let temp2 = result as NSString
            Cache2 = temp2.doubleValue
        
        }else{
            Cache2 = Cache
            Cache = 0.0
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NSThread.sleepForTimeInterval(2.0)//延长3秒
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

