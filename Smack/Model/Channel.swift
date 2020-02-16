//
//  Channel.swift
//  Smack
//
//  Created by hima attalla on 2/3/20.
//  Copyright © 2020 ahmed attalla. All rights reserved.
//

import Foundation

struct Channel {
    public private(set) var channelTitle: String!
    public private(set) var channelDiscription: String!
    public private(set) var id: String!
}

//***طريقة تانية ولازم أسماء ال variables تكون نفس اسماء ال response اللى راجعة بالظبط (نشوف ده من postman)***//

//struct Channel : Decodable {
//    public private(set) var _id: String!
//    public private(set) var name: String!
//    public private(set) var description: String!
//    public private(set) var __v: Int!
//}
