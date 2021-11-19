//
//  StoryList.swift
//  Minstagram_SwiftUI
//
//  Created by SeongMinK on 2021/11/19.
//

import SwiftUI

struct StoryList: View {
    var items: [User]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack {
                ForEach(items) { user in
                    StoryItem(user: user)
                }
            }
        }
    }
}

struct StoryList_Previews: PreviewProvider {
    static var stories = UserData().stories
    
    static var previews: some View {
        StoryList(items: Array(stories.prefix(6)))
    }
}
