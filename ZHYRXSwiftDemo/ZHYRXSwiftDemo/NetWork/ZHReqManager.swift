//
//  ZHReqManager.swift
//  ZHYRXSwiftDemo
//
//  Created by 赵宏亚 on 2019/7/29.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

import Foundation
import UIKit
import Moya
import Result
import RxSwift

//enum ReqManager {
//    // 登录接口
//    case Login(loginPlatform: String, mobile: String, password: String)
//    // 强制更新
//    case CheckUpdate(platformType:String,verCode:NSInteger,verName:String,appName:String)
//}
//
//
//protocol ZHReqType {
//    var addXAuth: Bool { get }
//}
//
//let netWorkHudPlugin = NetworkActivityPlugin{ (change) ->() in
//    if change == .began{
//        isNetWorkVisible(true)
//    }else{
//        isNetWorkVisible(false)
//    }
//}
//
//func isNetWorkVisible(_ isShow:Bool){
//    
//    UIApplication.shared.isNetworkActivityIndicatorVisible = isShow;
//}
//
//let requestClosure = { (endpoint: Endpoint, done: @escaping MoyaProvider<ReqManager>.RequestResultClosure) in
//    
//    guard var request = try? endpoint.urlRequest() else { return }
//    
//    request.timeoutInterval = 30
//    done(.success(request))
//}
