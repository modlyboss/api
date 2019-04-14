//
//  NewTableViewCell.swift
//  api
//
//  Created by 谢岷轩 on 2019/4/13.
//  Copyright © 2019 谢岷轩. All rights reserved.
//

import Foundation
import UIKit

class NewTableViewCell:UITableViewCell{
    let title = UILabel()
    let readingVolume = UILabel()
    let create_time = UILabel()
    override init(style:UITableViewCell.CellStyle, reuseIdentifier:String?){
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        title.frame = CGRect(x:0,y:0,width:180,height: 15)
        title.textColor = UIColor.black
        title.font = UIFont.boldSystemFont(ofSize: 20)
        title.textAlignment = .left
        
        readingVolume.frame = CGRect(x:180,y:105,width: 50,height: 15)
        readingVolume.textColor = UIColor.gray
        readingVolume.font = UIFont.boldSystemFont(ofSize: 15)
        readingVolume.textAlignment = .left
        
        create_time.frame = CGRect(x:0,y:105,width:100,height: 15)
        create_time.textColor = UIColor.gray
        create_time.font = UIFont.boldSystemFont(ofSize: 15)
        create_time.textAlignment = .left
        
        contentView.addSubview(title)
        contentView.addSubview(readingVolume)
        contentView.addSubview(create_time)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
