//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Shailesh on 03/07/19.
//  Copyright © 2019 Shailesh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var mobileTextField: UITextField!
    @IBOutlet weak var rollNoTextField: UITextField!
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
    }


    @IBAction func onClickedSaveButton(_ sender: UIButton) {
        
        let userDataDict = ["name":nameTextField.text!,"address":addressTextField.text!]
        DataBase.shared.saveUserData(object: userDataDict)
        nameTextField.text = ""
        addressTextField.text = ""
        
    }
    @IBAction func onClickedGetDataButton(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "StudentListViewController") as! StudentListViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

