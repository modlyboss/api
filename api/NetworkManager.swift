//
//  NetworkManager.swift
//  api
//
//  Created by 谢岷轩 on 2019/3/24.
//  Copyright © 2019 谢岷轩. All rights reserved.
//

import Foundation
import Alamofire
import AFNetworking
import Moya
import SwiftyJSON

let apiprovier = MoyaProvider<API>()
apiprovier.request(apiprovier.testapi){(result)in
    switch result{
    case let .success(response):
        print(response)
    case let .failure(error):
        print("网络连接失败")
        break
    }
}
