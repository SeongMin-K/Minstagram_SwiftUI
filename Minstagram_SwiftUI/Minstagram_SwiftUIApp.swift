//
//  Minstagram_SwiftUIApp.swift
//  Minstagram_SwiftUI
//
//  Created by SeongMinK on 2021/11/19.
//

import SwiftUI

@main
struct Minstagram_SwiftUIApp: App {
    @StateObject private var userData = UserData()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(userData)
        }
    }
}
