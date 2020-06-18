//
//  DltListViewController.swift
//  AlamofireTask
//
//  Created by Muhammad Shams on 18/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.
//

import UIKit

extension DltListViewController : UITableViewDelegate , UITableViewDataSource , ItemClickListner {
    func onClick(_ sender: UIButton) {
        let buttonPosition : CGPoint = sender.convert(sender.bounds.origin, to: dltTableView)
        let indexPath = dltTableView.indexPathForRow(at: buttonPosition)
        
        arry.remove(at: indexPath!.row)
        arryEmail.remove(at: indexPath!.row)
        
        dltTableView.reloadData()

    }
    
    
     func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return  arry.count
    }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
    //        cell.textLabel?.text = res[indexPath.row].name
    //        print(res[indexPath.row].name)
            
            // custom row
            let cell = tableView.dequeueReusableCell(withIdentifier: DltTableViewCell.identifier, for: indexPath) as! DltTableViewCell
                        
         //   NSIndexPath selectedIndexPath = [tableView indexPathForSelectedRow];

         //   print(index!)
            cell.name?.text = arry[indexPath.row]
            cell.email?.text = arryEmail[indexPath.row]
            
            cell.itemDelegate = self

    //        print(name)
          //  cell.setValue(_name: name, _city: city, _id: id, image: "")
            return cell
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
           print(indexPath)

    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
                 //   index = indexPath
     }
    
    
        
    
}

class DltListViewController: UIViewController {
    
   var arry = ["Shams","Shari","Hasan","Imran","Kamran","Rizwan","Salman","Furqan","Hamdan","Rizwan","Jibran","Ishaq","Kamran","Rizwan","Salman","Furqan","Shams","Shari","Hasan","Imran","Kamran"]
    
       var arryEmail = ["Shams@gmail.com","Shari@gmail.com","Hasan@gmail.com","Imran@gmail.com","Kamran@gmail.com","Rizwan@gmail.com","Salman@gmail.com","Furqan@gmail.com","Shams@gmail.com","Shari@gmail.com","Hasan@gmail.com","Imran@gmail.com","Kamran@gmail.com","Rizwan@gmail.com","Salman@gmail.com","Furqan@gmail.com","Shams@gmail.com","Shari@gmail.com","Hasan@gmail.com","Imran@gmail.com","Kamran@gmail.com"]
    
    

    @IBOutlet weak var dltTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        dltTableView.register(DltTableViewCell.nib(), forCellReuseIdentifier: DltTableViewCell.identifier)
        dltTableView.dataSource = self
        dltTableView.delegate = self

        // Do any additional setup after loading the view.
    }
    

}
