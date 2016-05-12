//
//  lishiViewController.swift
//  计分器
//
//  Created by 20131105803 on 16/5/12.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class lishiViewController: UIViewController {
    var db:SQLiteDB!

    override func viewDidLoad() {
        super.viewDidLoad()
        db = SQLiteDB.sharedInstance()
        initUser()

        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var LiShiText: UITextView!
    func initUser(){
        let data = db.query("select * from t_user")
        if data.count > 0 {
            let user = data[data.count - 1]
            LiShiText.text = user["team1"] as? String
        }
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
