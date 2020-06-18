//
//
//  LabelViewController.swift
//  AlamofireTask
//  Created by Muhammad Shams on 17/06/2020.
//  Copyright © 2020 Muhammad Shams. All rights reserved.


import UIKit
import Alamofire

extension LabelViewController : ApiResponseDelegate, UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return  res.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell" , for: indexPath)
//        cell.textLabel?.text = res[indexPath.row].name
//        print(res[indexPath.row].name)
        
        // custom row
        let cell = tableView.dequeueReusableCell(withIdentifier: LabelCell.identifier, for: indexPath) as! LabelCell
        cell.name.text = res[indexPath.row].name
        cell.email.text = res[indexPath.row].city
        cell.des.text = "res[indexPath.row].id jfjn jfnjfn"
        
        cell.img?.image = UIImage(named: "diamond");


//        print(name)
      //  cell.setValue(_name: name, _city: city, _id: id, image: "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let detailScreen = self.storyboard?.instantiateViewController(identifier: "DltListViewController") as! DltListViewController
        self.navigationController?.pushViewController(detailScreen, animated: true)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat{
        return 80
    }
    
 
    

    


    func onApiResponse(response: AFDataResponse<Any>, flag: String) {
        if flag == Constants.label {
            let json = try! JSONDecoder().decode(LabelResponse.self, from: response.data!)
            res = json.response
            table.reloadData()
            print(json.response)
            for j in json.response {
            }
        }
    }
    
    func onFailure(error: String) {
        print(error)
    }
    
    
    
    
}

class LabelViewController: UIViewController {
    
    var res : [Response] = []
    
    
    @IBOutlet var table : UITableView!


    override func viewDidLoad() {
        super.viewDidLoad()
        table.register(LabelCell.nib(), forCellReuseIdentifier: LabelCell.identifier)
        APIRequest.delegate = self
        table.dataSource = self
        table.delegate = self
        self.table.rowHeight = UITableView.automaticDimension

        
        APIRequest.callAPI(url: Constants.baseUrl + Constants.label, header: Constants.header, params: nil, flagType: Constants.label)
                
    }


}
