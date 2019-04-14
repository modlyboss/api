//
//  object.swift
//  api
//
//  Created by 谢岷轩 on 2019/3/31.
//  Copyright © 2019 谢岷轩. All rights reserved.
//
import Foundation
import ObjectMapper

class User: Mappable{
    
    var readingVolume : String?
    var title : String?
    var context : String?
    
    required init?(map: Map) {
    }
    
    func mapping(map: Map) {
        readingVolume <- map["readingVolume"]
        title <- map["title"]
        context <- map["context"]
    }
}

