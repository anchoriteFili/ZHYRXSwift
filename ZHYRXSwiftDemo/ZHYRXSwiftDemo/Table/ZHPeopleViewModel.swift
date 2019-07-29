//
//  ZHPeopleViewModel.swift
//  ZHYRXSwiftDemo
//
//  Created by 赵宏亚 on 2019/7/29.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

import Foundation
import RxSwift

struct PeopleListModel {
    let data = Observable.just([
        People(name: "张三", age: 10),
        People(name: "李四", age: 11),
        People(name: "王五", age: 12),
        People(name: "赵六", age: 13)
        ])
    
}
