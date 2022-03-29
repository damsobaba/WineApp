//
//  Landmark.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//

import Foundation
import SwiftUI

struct Wine: Hashable, Codable,Identifiable {
    var id: Int
    var name: String
    var park: String
    var state: String
    var description: String
    var isFavorite: Bool
    
    private var imageName: String
       var image: Image {
           Image(imageName)
       }
}
