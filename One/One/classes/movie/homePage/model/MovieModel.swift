//
//  MovieModel.swift
//  One
//
//  Created by 阳阳 on 16/8/17.
//  Copyright © 2016年 liuguyang. All rights reserved.
//

import UIKit
import SwiftyJSON

class MovieModel: NSObject {
    var id:String?
    var title:String?
    var verse:String?
    var verse_en:String?
    
    var score:String?
    var revisedscore:String?
    var releasetime:String?
    var scoretime:String?
    
    var cover:String?
    var servertime:NSNumber?
    
    class func paresModel(data:NSData)->MovieModel{
        let jsonData = JSON(data)
        let arra = jsonData["data"]
        let model = MovieModel()
        for (_,substr) in arra{
            model.id = substr["id"].string
            model.title = substr["title"].string
            model.verse = substr["verse"].string
            
            model.verse_en = substr["verse_en"].string
            model.score = substr["score"].string
            model.revisedscore = substr["revisedscore"].string
            model.releasetime = substr["releasetime"].string
            
            model.scoretime = substr["scoretime"].string
            model.cover = substr["cover"].string
            model.servertime = substr["servertime"].number
        }
        return model
    }
}
