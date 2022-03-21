//
//  LandmarkList.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/17.
//

import SwiftUI

struct Filter {
    var favorite:Bool
}

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private(set) var filter = Filter(favorite: false)
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
            (!filter.favorite || landmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List{
                Toggle(isOn: $filter.favorite) {
                    Text("Favorites only")
                }

                ForEach(filteredLandmarks){
                    landmark in NavigationLink {
                        LandmarkDetail(landmark: landmark)
                    } label: {
                        LandmarkItem(landmark: landmark)
                    }
                }
            }
            .navigationTitle("LandMarks")
        }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .environmentObject(ModelData())
    }
}
