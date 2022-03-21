//
//  ContentView.swift
//  Shared
//
//  Created by 叶思凡 on 2022/3/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ForEach(["iPhone SE (2nd generation)", "iPhone XS Max"], id: \.self) { deviceName in
            ContentView()
                .environmentObject(ModelData())
                .previewDisplayName(deviceName)
                .previewDevice(PreviewDevice(rawValue: deviceName))
        }
    }
}
