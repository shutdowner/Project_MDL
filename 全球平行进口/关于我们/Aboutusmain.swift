//
//  ViewController.swift
//  about us
//
//  Created by ZYJ on 15/11/1.
//  Copyright © 2015年 ZYJ. All rights reserved.
//

import UIKit

class Aboutusmain: UIViewController,UITableViewDataSource,UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    let cellInfoArray=["集团简介","董事长寄语","展厅","企业文化"]
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //cellInfoArray为储存cell信息的数组,测试时也可直接返回一个字面量
        return cellInfoArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel!.text = cellInfoArray[indexPath.row]
        cell.textLabel!.center = cell.center
        return cell
        
    }
    
    @IBOutlet weak var tableviewaboutus: UITableView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let secVC = Aboutusdetail()
        self.navigationController!.pushViewController(secVC, animated: true)
    }
}

