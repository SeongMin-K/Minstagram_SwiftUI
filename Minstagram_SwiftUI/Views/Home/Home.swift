//
//  Home.swift
//  Minstagram_SwiftUI
//
//  Created by SeongMinK on 2021/11/19.
//

import SwiftUI

struct Home: View {
    @EnvironmentObject var userData: UserData
    @State private var showingProfile = false
    
    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                StoryList(items: userData.stories)
                
                Spacer()
                
                Text("Feeds")
                    .font(.headline)
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
            .environmentObject(UserData())
    }
}
