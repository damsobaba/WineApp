//
//  MainTabView.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//

import Foundation

struct TabItemData {
    let image: String
    let selectedImage:String
    let title: String
}

enum TabType: Int, CaseIterable {
    case home = 0
    case favorite
    
    var tabItem: TabItemData {
        switch self {
        case .home:
            return TabItemData(image: "house", selectedImage: "house.fill", title: "Home")
        case .favorite:
            return TabItemData(image: "star", selectedImage: "star.fill", title: "Favorite")
        }
    }
}
