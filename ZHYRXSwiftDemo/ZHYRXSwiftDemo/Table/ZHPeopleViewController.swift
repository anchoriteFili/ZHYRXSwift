//
//  ZHPeopleViewController.swift
//  ZHYRXSwiftDemo
//
//  Created by 赵宏亚 on 2019/7/29.
//  Copyright © 2019 赵宏亚. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ZHPeopleViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let peopleList = PeopleListModel()
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 注册cell
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "myCell")
        
        // 绑定数据
        peopleList.data
            .bind(to: tableView.rx.items(cellIdentifier: "myCell")) {_, model, cell in
                
                cell.textLabel?.text = model.name
                cell.detailTextLabel?.text = String(model.age)
        }.disposed(by: disposeBag)
        
        // model选择
        tableView.rx.modelSelected(People.self).subscribe(onNext: { (people) in
            print("选择了\(people)")
        }).disposed(by: disposeBag)
        
        // 行点击
        tableView.rx.itemSelected.subscribe(onNext: { (indexPath) in
            print("选择了\(indexPath.row)行")
        }).disposed(by: disposeBag)

    }


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
