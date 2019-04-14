//
//  File.swift
//  api
//
//  Created by 谢岷轩 on 2019/3/24.
//  Copyright © 2019 谢岷轩. All rights reserved.
//

import Foundation
import Moya
let apiprovier = MoyaProvider<API>()

apiprovier.request(.test){result in
    if case let .success(response) = result{
        
}
