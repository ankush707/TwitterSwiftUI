//
//  TableView.swift
//  TwitterDemo
//
//  Created by Ankush on 09/03/23.
//

import Foundation
import UIKit

class TableViewController: UIViewController {
    
    var arrayData: [String] = ["Ankush", "Arun", "Arpit", "Ankita", "Riya", "Ankush", "Arun", "Arpit", "Ankita", "Riya"]
    var tableView: UITableView = UITableView(frame: CGRect(x: 0, y: 20, width: UIScreen.screenWidth, height: UIScreen.screenHeight - 50))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        self.view.addSubview(tableView)
    }
}

extension TableViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.arrayData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCell = UITableViewCell(style: UITableViewCell.CellStyle.subtitle, reuseIdentifier: "cell")
        myCell.textLabel?.text = "\(self.arrayData[indexPath.row])"
                myCell.detailTextLabel?.text = "First Name of index: \(indexPath.row)"
        return myCell
    }
}
