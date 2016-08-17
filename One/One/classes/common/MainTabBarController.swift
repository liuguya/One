//
//  MainTabBarController.swift
//  One
//
//  Created by 阳阳 on 16/8/15.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    var tabView:UIView?
    override func viewDidLoad() {
        super.viewDidLoad()

        
       createViewControllers()
 
    }
    
    func createViewControllers(){
        let ctrlNames = ["MovieViewController","ReadViewController","MusicViewController","HomeViewController"]
        
        let images = ["app_home@1","app_read@1","app_music@1","app_movie@1"]
        let selectImages = ["app_home@1","app_read@1","app_music@1","app_movie@1"]
        let names = ["首页","阅读","音乐","电影"]
        
        var vCtrlArray = Array<UINavigationController>()
        for i in 0..<ctrlNames.count{
            let ctrlName = "One." + ctrlNames[i]
            let cls = NSClassFromString(ctrlName) as! UIViewController.Type
            
            let ctrl = cls.init()
            
            ctrl.tabBarItem.title = names[i]
            ctrl.tabBarItem.image = UIImage(named: images[i])
            ctrl.tabBarItem.selectedImage = UIImage(named: selectImages[i])
            //导航
            let navCtrl = UINavigationController(rootViewController: ctrl)
            vCtrlArray.append(navCtrl)
            
        }
        self.viewControllers = vCtrlArray
    }
 

}
