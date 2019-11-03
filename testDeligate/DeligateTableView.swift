//
//  DeligateTableView.swift
//  testDeligate
//
//  Created by 土屋絢大 on 2019/10/20.
//  Copyright © 2019 Kenta Tsuchiya. All rights reserved.
//

import UIKit

class DelegateTableView: UITableView, UITableViewDataSource, UITableViewDelegate {

    //delegateを設定
    var testdelegate: testDeligate?

    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        self.dataSource = self
        self.delegate = self
        
        let nib = UINib(nibName: "DelegateTableViewCell", bundle: nil)
        self.register(nib, forCellReuseIdentifier: "DelegateTableViewCell")
    }

    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.dequeueReusableCell(withIdentifier: "DelegateTableViewCell")!
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.deselectRow(at: indexPath, animated: true)

        self.testdelegate?.test()
    }
}
