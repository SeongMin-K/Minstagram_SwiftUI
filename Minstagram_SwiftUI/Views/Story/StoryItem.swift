//
//  StoryItem.swift
//  Minstagram_SwiftUI
//
//  Created by SeongMinK on 2021/11/19.
//

import SwiftUI

struct StoryItem: View {
    var user: User
    
    var body: some View {
        VStack(alignment: .center) {
            if user.hasNewStory {
                CircleImage(image: user.image)
                    .overlay {
                        Circle().stroke(.yellow, lineWidth: 3)
                    }
                    .padding(.top, 5)
            } else {
                CircleImage(image: user.image)
                .padding(.top, 5)
            }
            Text(user.username)
                .foregroundColor(.primary)
                .font(.caption)
        }
        .padding(.leading, 10)
    }
}

struct StoryItem_Previews: PreviewProvider {
    static var previews: some View {
        StoryItem(user: UserData().stories[0])
    }
}
