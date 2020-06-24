//
//  FeedsViewController.swift
//  DemoTableView
//
//  Created by SD-M004 on 9/6/2563 BE.
//  Copyright © 2563 TableView. All rights reserved.
//

import UIKit

class FeedsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.tableView.register(UINib(nibName: "FeedsTableViewCell", bundle: nil), forCellReuseIdentifier: "cellFeeds")
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFeeds", for: indexPath) as! FeedsTableViewCell
        
        let num = indexPath.row + 1
        
        cell.lbTitle.text = "Title \(num)"
        cell.lbDes.text = "Description Title:\(num)"
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 80
    }
    

}
