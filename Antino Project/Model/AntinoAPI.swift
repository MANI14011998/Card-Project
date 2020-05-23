//
//  AntinoAPI.swift
//  Antino Project
//
//  Created by MANINDER SINGH on 24/05/20.
//  Copyright © 2020 MANINDER SINGH. All rights reserved.
//

import Foundation
class AntinoAPI{
    enum EndpointString:String{
        case antinoApiprofile="http://demo8716682.mockable.io/cardData"
        var url:URL{
            return URL(string: EndpointString.antinoApiprofile.rawValue)!
        }
        
    }
    class func requestfile(url:URL,complitionHandler:@escaping(Welcome,Error?)->Void){
        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in
        guard let data = data else{
            print("no data")
            complitionHandler([],error)
            return
        }
            let decoder = JSONDecoder()
            do{
                let decodedData = try decoder.decode(Welcome.self, from: data)
                complitionHandler(decodedData,nil)
            }catch {
                print("Eror")
            }
        }
        task.resume()
    }
}
