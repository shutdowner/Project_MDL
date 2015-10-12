//
//  ViewController.swift
//  全球平行进口
//
//  Created by 王卓 on 15/9/29.
//  Copyright © 2015年 538_iOS_Team. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        loadAllViewController()
//        self.childViewControllerForStatusBarStyle()
//        self.preferredStatusBarStyle()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    func loadAllViewController(){
        //        获取每个故事版的根视图控制器
        let showCarsRootViewController = UIStoryboard(name: "ShowCars", bundle: nil).instantiateInitialViewController() as! UINavigationController
        
        let newsRootViewController = UIStoryboard(name: "News", bundle: nil).instantiateInitialViewController() as! UINavigationController
        
        let LogInIdentifier = "LogIn"
        let NotLogInIdentifier = "NotLogIn"
        let myInfoRootViewController = UINavigationController(rootViewController: judgeLogInStatus(storyBoardName: "MyInfo", LogInViewControllerIdentifier: LogInIdentifier, NotLogInViewControllerIdentifier: NotLogInIdentifier))
        
        let aboutUsRootViewController = UIStoryboard(name: "AboutUs", bundle: nil).instantiateInitialViewController() as! UINavigationController
        
        //设置tabbar被选中时的字体颜色
        let selectedText = [NSForegroundColorAttributeName:UIColor.purpleColor()]
        showCarsRootViewController.tabBarItem.setTitleTextAttributes(selectedText, forState: UIControlState.Selected)
        
        newsRootViewController.tabBarItem.setTitleTextAttributes(selectedText, forState: UIControlState.Selected)
        myInfoRootViewController.tabBarItem.setTitleTextAttributes(selectedText, forState: UIControlState.Selected)
        aboutUsRootViewController.tabBarItem.setTitleTextAttributes(selectedText, forState: UIControlState.Selected)
        
        //        设置 tabBarItem的一些属性
        //1
        showCarsRootViewController.tabBarItem.title = "汽车展示"
        showCarsRootViewController.tabBarItem.image = UIImage(named: "showCars")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        showCarsRootViewController.tabBarItem.selectedImage = UIImage(named: "showCars_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        //2
        newsRootViewController.tabBarItem.title = "新闻活动"
        newsRootViewController.tabBarItem.image = UIImage(named: "news")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        newsRootViewController.tabBarItem.selectedImage = UIImage(named: "news_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        //3imageWithRenderingMode添加image渲染，使其保持为图片原色
        myInfoRootViewController.tabBarItem.title = "我的"
        myInfoRootViewController.tabBarItem.image = UIImage(named: "myInfo")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        myInfoRootViewController.tabBarItem.selectedImage = UIImage(named: "myInfo_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        //4
        aboutUsRootViewController.tabBarItem.title = "关于我们"
        aboutUsRootViewController.tabBarItem.image = UIImage(named: "aboutUs")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        aboutUsRootViewController.tabBarItem.selectedImage = UIImage(named: "aboutUs_selected")?.imageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal)
        
        self.viewControllers = [
            showCarsRootViewController,
            newsRootViewController,
            myInfoRootViewController,
            aboutUsRootViewController
        ]
        
        self.selectedIndex = 0
    }

    /**
    判断用户登录状态
    
    - parameter storyBoardName:                   故事版名称
    - parameter LogInViewControllerIdentifier:    已登录View Controller标记
    - parameter NotLogInViewControllerIdentifier: 未登录View Controller标记
    
    - returns: 返回应当显示的View Controller
    */
    func judgeLogInStatus(storyBoardName storyBoardName:String, LogInViewControllerIdentifier:String,NotLogInViewControllerIdentifier:String)->UIViewController{
        //判断是否登陆，由登陆状态判断启动页面
        //获取UserDefault
        let userDefaults = NSUserDefaults.standardUserDefaults()
        let userName = userDefaults.objectForKey("userName")
        //获取storyboard
        let storyboard = UIStoryboard.init(name: storyBoardName, bundle: NSBundle.mainBundle())
        //如果用户未登陆则把根视图控制器改变成登陆视图控制器
        if userName == nil{
            print(userName)
            let view = storyboard.instantiateViewControllerWithIdentifier(NotLogInViewControllerIdentifier)
            return view
        }
        else{
            let view = storyboard.instantiateViewControllerWithIdentifier(LogInViewControllerIdentifier)
            return view
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

