//
//  ViewController.swift
//  ZHYRXSwiftDemo
//
//  Created by 赵宏亚 on 2019/7/29.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClick(_ sender: UIButton) {
        
        self.navigationController?.pushViewController(ZHPeopleViewController(), animated: true)
        
        
    }
    
}

