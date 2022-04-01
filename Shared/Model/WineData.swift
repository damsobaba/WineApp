//
//  WineData.swift
//  MyVin
//
//  Created by Adam Mabrouki on 29/03/2022.
//

import Foundation
import SwiftUI

// MARK: - WineMatch
struct WineData:Identifiable, Codable {
    
    var id = UUID()
    let pairedWines: [String]
    let pairingText: String
    let productMatches: [ProductMatch]
    
    enum CodingKeys: String, CodingKey {
        case pairedWines
        case pairingText
        case productMatches
    }
}


// MARK: - ProductMatch
struct ProductMatch: Codable {
    let id: Int
    let title, productMatchDescription, price: String
    let imageURL: String
    let averageRating: Double
    let ratingCount: Int
    let score: Double
    let link: String

    enum CodingKeys: String, CodingKey {
        case id, title
        case productMatchDescription = "description"
        case price
        case imageURL = "imageUrl"
        case averageRating, ratingCount, score, link
    }
}
