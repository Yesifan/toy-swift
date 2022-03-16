//
//  Map.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/16.
//

import SwiftUI
import MapKit

struct Map: View {
    // You use the @State attribute to establish a source of truth
    // for data in your app that you can modify from more than one view.
    // SwiftUI manages the underlying storage and automatically updates views that depend on the value.
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    var body: some View {
        // By prefixing a state variable with $, you pass a binding,
        // which is like a reference to the underlying value.
        // When the user interacts with the map, the map updates the region value to match the part
        // of the map that’s currently visible in the user interface.
        MapKit.Map(coordinateRegion: $region)
            .ignoresSafeArea(edges:.top)
    }
}

struct Map_Previews: PreviewProvider {
    static var previews: some View {
        Map()
    }
}
