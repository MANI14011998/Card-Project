//
//  ViewController.swift
//  Antino Project
//
//  Created by MANINDER SINGH on 24/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import UIKit
import PINRemoteImage

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    var userData = [UserModel]()
    
    @IBOutlet weak var userTableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        AntinoAPI.requestfile(url: AntinoAPI.EndpointString.antinoApiprofile.url, complitionHandler: handleBreedsListResponse(welcome:error:))
    }
    
    
    
    func handleBreedsListResponse(welcome:Welcome,error:Error?){
        let decodeData=welcome
        for i in decodeData{
            DispatchQueue.main.async {
                self.userData.append(UserModel(name: i.name, age: i.age, location: i.location, imageURL: i.url))
                self.userTableView.reloadData()
            }
            
        }
    }
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.profileImage.pin_setImage(from: URL(string: userData[indexPath.row].imageURL))
        cell.name.text=userData[indexPath.row].name
        cell.ageLbl.text=userData[indexPath.row].age
        cell.locationLbl.text=userData[indexPath.row].location
        return cell
        
    }
    
}

