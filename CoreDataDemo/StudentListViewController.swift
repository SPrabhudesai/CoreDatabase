
//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Shailesh on 03/07/19.
//  Copyright © 2019 Shailesh. All rights reserved.
//

import UIKit

class StudentListViewController: UIViewController {

    
    @IBOutlet weak var studentListTableView: UITableView!
    fileprivate var student:[Student] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        student = DataBase.shared.getUserData()
        studentListTableView.reloadData()
        
    }

}

extension StudentListViewController:UITableViewDelegate,UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return student.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.nameLabel.text = student[indexPath.row].name
        cell.emailLabel.text = student[indexPath.row].address
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }
}
