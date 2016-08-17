//
//  CustomImageView.swift
//  One
//
//  Created by 阳阳 on 16/8/16.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

import UIKit

class CustomImageView: UIImageView {

    //点击事件的闭包
    var clickClosure: ((Bool, CustomImageView) -> Void)?
    
    //当前的状态是放大还是正常
    var isNormal: Bool?
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        //响应用户的点击事件
        
        self.clickClosure!(self.isNormal!, self)
        
    }

}
