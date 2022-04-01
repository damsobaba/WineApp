//
//  MyVinApp.swift
//  Shared
//
//  Created by Adam Mabrouki on 25/03/2022.
//

import SwiftUI

@main
struct MyVinApp: App {
    @StateObject private var modelData = ModelData()
    @StateObject private var wineViewModel = WineViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
                .environmentObject(wineViewModel)
        }
    }
}
