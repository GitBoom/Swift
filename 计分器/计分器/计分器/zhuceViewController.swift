//
//  zhuceViewController.swift
//  计分器
//
//  Created by 20131105803 on 16/5/26.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class zhuceViewController: UIViewController {

    var dl:SQLiteDB!
    override func viewDidLoad() {
        super.viewDidLoad()
        dl = SQLiteDB.sharedInstance()
        dl.execute("create table if not exists t_user(uid integer primary key,uname varchar(20),upassword varchar(20))")
        initUser()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Password: UITextField!
    
    @IBAction func ZhuCe(sender: AnyObject) {
        save()
    }
    func initUser() {
        let data = dl.query("select * from t_user")
        if data.count > 0 {
            //获取最后一行数据显示
            let user = data[data.count - 1]
            Name.text = user["uname"] as? String
            Password.text = user["upassword"] as? String

        }
    }
    func save() {
        let uname = self.Name.text!
        let upassword = self.Password.text!
        //插入数据库，这里用到了esc字符编码函数，其实是调用bridge.m实现的
        let sql = "insert into t_user(uname,upasssword) values('\(uname)','\(upassword)')"
        print("sql: \(sql)")
        //通过封装的方法执行sql
        let result = dl.execute(sql)
        print(result)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
