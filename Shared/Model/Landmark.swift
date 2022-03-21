//
//  Landmark.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/17.
//

import Foundation
import SwiftUI
import CoreLocation

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

struct Landmark: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
    var image: Image {
        Image(imageName)
            .resizable()
            
    }

    private var coordinates: Coordinates
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
}
