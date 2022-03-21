//
//  LandmarkItem.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/17.
//

import SwiftUI

struct LandmarkItem: View {
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .frame(width: 30, height: 30)
            Text(landmark.name)
            Spacer()
            if landmark.isFavorite {
                Text("⭐️")
            }
        }
    }
}

struct LandmarkItem_Previews: PreviewProvider {
    static var previews: some View {
        let landmarks:[Landmark] = loadLandmarks()
        Group {
            LandmarkItem(landmark: landmarks[0])
            LandmarkItem(landmark: landmarks[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
