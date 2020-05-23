//
//  UserModel.swift
//  Antino Project
//
//  Created by MANINDER SINGH on 24/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import Foundation

class UserModel{
    let name : String
    let age : String
    let location : String
    let imageURL : String
    
    init(name :String, age : String, location : String, imageURL : String){
        self.name = name
        self.age = age
        self.location = location
        self.imageURL = imageURL
        
    }
}
