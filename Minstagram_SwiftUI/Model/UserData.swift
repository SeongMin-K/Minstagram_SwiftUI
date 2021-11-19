//
//  UserData.swift
//  Minstagram_SwiftUI
//
//  Created by SeongMinK on 2021/11/19.
//

import Foundation
import Combine

final class UserData: ObservableObject {
    @Published var stories: [User] = load("userData.json")
    
    var news: [User] {
        stories.filter { $0.hasNewStory }
    }
}

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

