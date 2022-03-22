//
//  LandmarkDetail.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/17.
//

import SwiftUI

struct LandmarkDetail: View {
    @EnvironmentObject var modelData: ModelData
    var landmark: Landmark
    
    var landmarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landmark.id })!
    }
    
    var body: some View {
        ScrollView {
            Map().frame(height: 300)
            CircleImage(image: landmark.image)
                .frame(width: 200, height: 200)
                .offset(y:-100)
                .padding(.bottom, -100)
            VStack(alignment: .leading) {
                HStack {
                    Text(landmark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landmarkIndex].isFavorite)
                }
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                }.foregroundColor(.secondary)
                
                Divider()
                Text("About").font(.title2)
                Text(landmark.description)
            }
            .padding(.horizontal)
            Spacer()
        }
        .ignoresSafeArea(edges:.top)
        .navigationTitle(landmark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static let modelData = ModelData()
    
    static var previews: some View {
        LandmarkDetail(landmark: modelData.landmarks[0])
            .environmentObject(modelData)
    }
}
