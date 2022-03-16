//
//  CircleImage.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/16.
//

import SwiftUI

struct CircleImage: View {
    var body: some View {
        Image("park")
            .frame(width: 200, height: 200, alignment: .top)
            .clipShape(Circle())
            .overlay{
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage()
    }
}
