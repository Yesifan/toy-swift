//
//  toy_swiftApp.swift
//  Shared
//
//  Created by 叶思凡 on 2022/3/14.
//

import SwiftUI

@main
struct ToyApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
