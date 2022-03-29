//
//  wineResultView.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//
import SwiftUI

struct WineResultList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
   // @Binding var showModal: Bool

    var filteredWine: [Wine] {
        modelData.wine.filter { wine in
            (!showFavoritesOnly || wine.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
//                Toggle(isOn: $showFavoritesOnly) {
//                    Text("Favorites only")
//                }

                ForEach(filteredWine) { wine in
                    NavigationLink {
                      //  WineDetail(Wine: wine)
                    } label: {
                        WineResultRow(wine: wine)
                    }
                }
            }
            .navigationTitle("Best Results")
        }
    }
}

struct WineResultList_Previews: PreviewProvider {
    static var previews: some View {
        WineResultList()
            .environmentObject(ModelData())
    }
}

