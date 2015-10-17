//
//  MyInfoViewController.swift
//  全球平行进口
//
//  Created by 王卓 on 15/9/30.
//  Copyright © 2015年 538_iOS_Team. All rights reserved.
//

import UIKit

class MyInfoViewController: UIViewController {

    @IBOutlet weak var userName: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userName.text = userDefaults.objectForKey("userName") as? String
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signOut(sender: UIButton) {
        let userDefaults = NSUserDefaults.standardUserDefaults()
        userDefaults.removeObjectForKey("userName")
        userDefaults.removeObjectForKey("password")
        let main = MainViewController()
        main.loadAllViewController()
        main.selectedIndex = 2
        dismissViewControllerAnimated(true) { () -> Void in
            
        }
        //presentViewController(main, animated: true, completion: nil)
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
