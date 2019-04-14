//
//  api.swift
//  api
//
//  Created by 谢岷轩 on 2019/3/23.
//  Copyright © 2019 谢岷轩. All rights reserved.
//

import Foundation
import AFNetworking
import Moya
import SwiftyJSON


enum API {
    case test
}
extension API:TargetType{
    var baseURL: URL {
        return URL.init(string:"http://106.14.143.18:3010/common/getIndex")!
    }
    
    var path: String {
        return ""
    }
    
    var method: Moya.Method {
        switch self {
        default:
            return .get
        }
        }
    
    var sampleData: Data {
        return "".data(using: String.Encoding.utf8)!
    }
    
    var task: Task {
            return .requestPlain
            
        }
    
    var headers: [String : String]? {
        return ["Content-type":"application/json"]
    }
}

