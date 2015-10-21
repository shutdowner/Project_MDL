//
//  JoinUsViewController.swift
//  全球平行进口
//
//  Created by 王卓 on 15/10/21.
//  Copyright © 2015年 538_iOS_Team. All rights reserved.
//

import UIKit

class JoinUsViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var joinUsDataArray = ["加盟流程","加盟条件","加盟支持"]
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var joinButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.tableFooterView = joinButton
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return joinUsDataArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("JoinUsCell")
        cell?.textLabel?.text = joinUsDataArray[indexPath.row]
        return cell!
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
