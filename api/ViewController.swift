//
//  ViewController.swift
//  api
//
//  Created by 谢岷轩 on 2019/3/23.
//  Copyright © 2019 谢岷轩. All rights reserved.


import UIKit
import SwiftyJSON
import Moya
import ObjectMapper

let  apiprovier = MoyaProvider<API>()

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource{

    var HduinTableView = UITableView()
    var dataSource = [[String:String]()]
    var UserApi:[User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //拉
        //初始化HduinTableView
        let HduinTableView = UITableView(frame:view.bounds,style: .grouped)
        HduinTableView.dataSource = self
        HduinTableView.delegate = self
        self.view.addSubview(HduinTableView)
        apiprovier.request(.test){result in
            switch result{
            case let .success(response):
                do{
                    let data = try? response.mapJSON()
                    print(data)
                    self.UserApi = []
                    self.UserApi = Mapper<User>().mapArray(JSONArray: data as! [[String : Any]])
                    print(self.UserApi)
                }
            case .failure(_): break
                
            }
        }
    self.dataSource = [["title":"hape","readingVolume":"1","create_time":"1"],
    ["title":"hape","readingVolume":"2","create_time":"1"],
    ["title":"hape","readingVolume":"3","create_time":"1"],
    ["title":"hape","readingVolume":"5","create_time":"1"],
    ["title":"hape","readingVolume":"4","create_time":"1"],
    ["title":"hape","readingVolume":"6","create_time":"1"],
    ["title":"hape","readingVolume":"7","create_time":"1"],
    ["title":"hape","readingVolume":"8","create_time":"1"],
    ]
//    print(self.dataSource)
//    print(self.dataSource.count)
    HduinTableView.reloadData()
    }
    //section
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataSource.count;
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 35
    }
    //cell
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellid = "apiCellID"
        let cell = NewTableViewCell(style:.subtitle, reuseIdentifier: cellid)
//        var cell:NewTableViewCell? = (tableView.dequeueReusableCell(withIdentifier: cellid) as! NewTableViewCell)
          
        let dict:Dictionary = dataSource[indexPath.row]
        cell.title.text = dict["title"]
        cell.readingVolume.text = dict["readingVolume"]
        cell.create_time.text = dict["create_time"]
        return cell
    }

    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print(indexPath.row)
    }

}

