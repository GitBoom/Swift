//
//  loginViewController.swift
//  计分器
//
//  Created by 20131105803 on 16/5/26.
//  Copyright © 2016年 20131105803. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    var dl:SQLiteDB!
    override func viewDidLoad() {
        super.viewDidLoad()
        NSThread.sleepForTimeInterval(2.0)//延长2秒
        dl = SQLiteDB.sharedInstance()
        //initUser()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var Name: UITextField!
    @IBOutlet weak var Password: UITextField!

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
