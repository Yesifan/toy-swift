//
//  FavoriteButton.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/21.
//

import SwiftUI

struct FavoriteButton: View {
    // 此视图中所做的更改会传播回数据源。
    @Binding var isSet: Bool
    
    var body: some View {
        Button {
            isSet.toggle()
        } label: {
            Label("Toggle Favorite", systemImage: isSet ? "star.fill" : "star")
                .labelStyle(.iconOnly)
                .foregroundColor(isSet ? .yellow : .gray)
        }
    }
}

struct FavoriteButton_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteButton(isSet: .constant(true))
    }
}
