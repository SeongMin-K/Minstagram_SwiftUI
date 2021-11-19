//
//  User.swift
//  Minstagram_SwiftUI
//
//  Created by SeongMinK on 2021/11/19.
//

import SwiftUI

struct User: Hashable, Codable, Identifiable {
    var id: Int
    var username: String
    var hasNewStory: Bool
//    var description: String = ""
//    var feed: Int = 0
//    var follower: Int = 0
//    var following: Int = 0
    
    private var imageName: String
    var image: Image {
        Image(imageName)
    }
}

