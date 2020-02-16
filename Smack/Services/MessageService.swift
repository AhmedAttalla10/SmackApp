//
//  MessageService.swift
//  Smack
//
//  Created by hima attalla on 2/3/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MessageService {
    static let instance = MessageService()
    var channels = [Channel]()
    
    func findAllChannel(completion: @escaping CompletionHandler) {
        Alamofire.request(URL_GET_CHANNELS, method: .get, parameters: nil, encoding: JSONEncoding.default, headers: BEARER_HEADER).responseJSON { (response) in
           // print(" 😎 findAllChannel response ",response)
            if response.result.error == nil {
                guard let data = response.data else {return}
                
                //**** طريقة تانية ومختصرة فى الكود بس لازم ال struct يكون وارث من Decodable ****//
                
//                do{
//                    self.channels = try JSONDecoder().decode([Channel].self, from: data)
//                }
//                catch let error {
//                    debugPrint(error as Any)
//                }
//                print(self.channels)
                
                do{
                    if let json = try JSON(data: data).array {
                        for item in json {
                            let name = item["name"].stringValue
                            let channelDescription = item["description"].stringValue
                            let id = item["_id"].stringValue
                            let channel = Channel(channelTitle: name, channelDiscription: channelDescription, id: id)
                            self.channels.append(channel)

                            completion(true)
                        }
                    }
                    print(self.channels)
           }
                    catch{
                        print("errorGamed")
               }


          }
            else {
                completion(false)
                debugPrint(response.result.error as Any)
                
            }
    }
}
}

