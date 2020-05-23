//
//  apiModel.swift
//  Antino Project
//
//  Created by MANINDER SINGH on 24/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import Foundation
struct WelcomeElement: Codable {
    let url: String
    let name, age, location: String
    enum CodingKeys: String, CodingKey {
        case url, name, age, location
    }
}

typealias Welcome = [WelcomeElement]
