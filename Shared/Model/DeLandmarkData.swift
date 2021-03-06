//
//  deLandmarkData.swift
//  toy-swift
//
//  Created by 叶思凡 on 2022/3/17.
//

import Foundation
import Combine

let path = "landmarkData.json"

func loadLandmarks<T: Decodable>(_ filename: String = path) -> T {
    let data: Data

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = loadLandmarks(path)
}
