//
//  SocketService.swift
//  Smack
//
//  Created by hima attalla on 2/12/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import UIKit
import Foundation
import SocketIO

class SocketService: NSObject {

    static let instance = SocketService()
    
    override init() {
        super.init()
    }
    

   // var socket = SocketManager(socketURL: URL(string: BASE_URL)!)
      static var manager: SocketManager = SocketManager(socketURL: URL(string: BASE_URL)!)
    var socket = manager.defaultSocket
    
    func establishConnectio() {
        socket.connect()
    }
    func closeConnection() {
        socket.disconnect()
    }
    
    func addChannel(channelName: String, channelDescription: String, completion: @escaping CompletionHandler) {
//        socket.emitAll("newChannel", channelName, channelDescription)
        socket.emit("newChannel", channelName, channelDescription)
        completion(true)
        
        
    }
    func getChannel(completion: @escaping CompletionHandler) {
        socket.on("channelCreated") { (dataArray, ack) in
            guard let channelName = dataArray[0] as? String else {return}
            guard let channelDesc = dataArray[1] as? String else {return}
            guard let channelID = dataArray[2] as? String else {return}
            let newChannel = Channel(channelTitle: channelName, channelDiscription: channelDesc, id: channelID)
            MessageService.instance.channels.append(newChannel)
            completion(true)
        }
    }
    }
