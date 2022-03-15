//
//  ContentView.swift
//  Shared
//
//  Created by 叶思凡 on 2022/3/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Group{
            Text("Hello, Swift!")
                .padding()
                .font(.title)
                .foregroundColor(.gray)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            
    }
}
