//
//  FavoriteVIew.swift
//  MyVin
//
//  Created by Adam Mabrouki on 29/03/2022.
//

import SwiftUI

struct FavoriteView: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = true
   // @Binding var showModal: Bool

    var filteredWine: [Wine] {
        modelData.wine.filter { wine in
            (!showFavoritesOnly || wine.isFavorite)
        }
    }

    var body: some View {
        NavigationView {
            List {
                ForEach(filteredWine) { wine in
                    NavigationLink {
                      //  WineDetail(Wine: wine)
                    } label: {
                        HStack {
                        WineExploreRow(wine: wine)
                        if wine.isFavorite {
                            Image(systemName: "star.fill")
                                .foregroundColor(.yellow)
                        }
                    
                        }
                        
                    }
                }
            }
            .navigationTitle("You're Favorite")
        }
    }


struct FavoriteVIew_Previews: PreviewProvider {
        static var previews: some View {
            FavoriteView()
                .environmentObject(ModelData())
        }
    }
}
