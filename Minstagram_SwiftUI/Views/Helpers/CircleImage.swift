//
//  CircleImage.swift
//  Minstagram_SwiftUI
//
//  Created by SeongMinK on 2021/11/19.
//

import SwiftUI

struct CircleImage: View {
    var image: Image

    var body: some View {
        image
            .resizable()
            .scaledToFit()
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            .frame(width: 80, height: 80)
            .overlay {
                Circle().stroke(.black, lineWidth: 2)
            }
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: Image("kings_a_man"))
            .previewLayout(.fixed(width: 200, height: 200))
    }
}
