//
//  ContentView.swift
//  Shared
//
//  Created by 叶思凡 on 2022/3/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Map().frame(height: 300)
            CircleImage()
                .offset(y:-100)
                .padding(.bottom, -100)
            VStack(alignment:.leading) {
                Text("Hello, Swift!")
                    .font(.title)
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                }.foregroundColor(.secondary)
                
                Divider()
                Text("About").font(.title2)
                Text("It is Amazing!!!")
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
