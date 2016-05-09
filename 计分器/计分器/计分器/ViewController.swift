//
//  ViewController.swift
//  计分器
//
//  Created by 20131105803 on 16/4/14.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var db:SQLiteDB!
    var ShowNumber = 0
    var ShowNumber2 = 0
    var remainTime:Double!
    override func viewDidLoad() {
        super.viewDidLoad()
        //获取数据库实例
        db = SQLiteDB.sharedInstance()
        //如果表还不存在则创建表（其中uid为自增主键）
        db.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),mobile varchar(20))")
        //如果有数据则加载
        initUser()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    @IBOutlet weak var LeftTextField: UITextField!
    @IBOutlet weak var RightTextField: UITextField!
    @IBOutlet weak var Team1: UITextField!
    @IBOutlet weak var Team2: UITextField!
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
    @IBOutlet weak var CountDown: UIDatePicker!
    
    @IBAction func Begin(sender: AnyObject) {
        
    }
    @IBAction func Save(sender: AnyObject) {
        save()
    }
    func initUser() {
        let data = db.query("select * from t_user")
        if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 1]
            LeftTextField.text = user["uname"] as? String
            RightTextField.text = user["mobile"] as? String
            Team1.text = user["team1"] as? String
            Team2.text = user["team2"] as? String
        }
    }
    func save() {
        let uname = self.LeftTextField.text!
        let mobile = self.RightTextField.text!
        let team1 = self.Team1.text!
        let team2 = self.Team2.text!
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into t_user(uname,mobile,team1,team2) values('\(uname)','\(mobile)','\(team1)','\(team2)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
        let result = db.execute(sql)
        print(result)
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

