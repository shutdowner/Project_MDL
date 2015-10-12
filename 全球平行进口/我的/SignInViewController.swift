//
//  SignInViewController.swift
//  全球平行进口
//
//  Created by 王卓 on 15/10/12.
//  Copyright © 2015年 538_iOS_Team. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {
    @IBOutlet weak var userName: UITextField!

    @IBOutlet weak var password: UITextField!
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var phone: UITextField!
    
    @IBOutlet weak var eMail: UITextField!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func signUp(sender: UIButton) {
        
        self.navigationController?.popViewControllerAnimated(true)
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
