//
//  LandmarkList.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/17.
//

import SwiftUI

struct LandmarkList: View {
    var landmarks:[Landmark] = loadLandmarks()
    
    var body: some View {
        NavigationView {
            VStack {
                Image("park")
                    .resizable()
                    .frame(height:440)
                    .ignoresSafeArea(edges:.top)
                    .padding(.bottom, -400)
                List(landmarks){
                    landmark in Group {
                        NavigationLink {
                            LandmarkDetail(landmark: landmark)
                        } label: {
                            LandmarkItem(landmark: landmark)
                        }
                        NavigationLink {
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
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
    }
}
