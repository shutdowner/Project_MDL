//
//  LogInViewController.swift
//  全球平行进口
//
//  Created by 王卓 on 15/10/12.
//  Copyright © 2015年 538_iOS_Team. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!
    
    @IBOutlet weak var password: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func toLogIn(sender: UIButton) {
        guard userName.text != "" && password.text != "" else {
            let wrongAlert = UIAlertController(title: "登录失败", message: "帐户或密码不能为空", preferredStyle: UIAlertControllerStyle.Alert)
            let canelButton = UIAlertAction(title: "确定", style: .Cancel, handler: nil)
            wrongAlert.addAction(canelButton)
            self.presentViewController(wrongAlert, animated: true, completion:nil)
            return
        }
        
        guard checkUserInfo(userName.text!,password: password.text!)
            else{
            let wrongAlert = UIAlertController(title: "登录失败", message: "帐户或密码错误", preferredStyle: UIAlertControllerStyle.Alert)
                let canelButton = UIAlertAction(title: "确定", style: .Cancel, handler: nil)
                wrongAlert.addAction(canelButton)
                self.presentViewController(wrongAlert, animated: true, completion: { () -> Void in
                    self.password.text=""
                })
                return
        }
        //print(userName.text,password.text)
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.setValue(userName.text!, forKeyPath: "userName")
        userDefaults.setValue(password.text!, forKeyPath: "password")
        let main = MainViewController()
        main.loadAllViewController()
        main.selectedIndex = 2
        presentViewController(main, animated: true, completion: nil)
        //let storyboard = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle())
        //let view = storyboard.instantiateViewControllerWithIdentifier("ViewController")
        //self.presentViewController(view, animated: true, completion: nil)
    }
    
    
    
    
    func checkUserInfo(userName:String,password:String)->Bool{
        
        return true
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
