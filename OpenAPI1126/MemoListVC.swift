//
//  MemoListVC.swift
//  OpenAPI1126
//
//  Created by 503-12 on 28/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import UIKit

class MemoListVC: UITableViewController {
    
    //이벤트 처리에 사용할 메소드
    @objc func add(_ barButtonItem: UIBarButtonItem){
        
        //MemoFormVC 화면에 출력하기
        let memoFormVC = self.storyboard?.instantiateViewController(withIdentifier: "MemoFormVC")
        
        memoFormVC?.navigationItem.title = "메모 작성"
        self.navigationController?.pushViewController(memoFormVC!, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //내비게이션 바의 오른쪽에 + 버튼 배치
        self.navigationItem.rightBarButtonItem = UIBarButtonItem.init(barButtonSystemItem: .add, target: self, action: #selector(MemoListVC.add(_:)))
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }  
}
