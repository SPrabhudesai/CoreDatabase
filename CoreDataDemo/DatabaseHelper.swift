//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Shailesh on 03/07/19.
//  Copyright © 2019 Shailesh. All rights reserved.
//

import UIKit
import CoreData


class DataBase {
    static var shared = DataBase()
    private init(){}
    
    let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext
    func saveUserData(object:[String:String]){
        let student = NSEntityDescription.insertNewObject(forEntityName: "Student", into: context!) as! Student
        student.name = object["name"]
        student.address = object["address"]
        do{
            try context?.save()
        }catch{
            print("not saved")
        }
    }
    
    func getUserData() -> [Student]{
        var student = [Student]()
        let featchRequest = NSFetchRequest<NSManagedObject>(entityName: "Student")
        do{
            student = try context?.fetch(featchRequest) as! [Student]
        }catch{
            print(error.localizedDescription)
        }
        return student
    }
}
