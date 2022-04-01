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
    @EnvironmentObject var wineViewModel: WineViewModel
    
    var filteredWine: [Wine] {
        modelData.wine.filter { wine in
            (!showFavoritesOnly || wine.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack {
                    Text("wineResult")
                    ForEach(wineViewModel.products, id: \.id) { productMatch in
                        WineResultRow(product: productMatch)
                    }
                }
                .padding(.horizontal, 10)
                .navigationTitle("Best Results")
            }
        }
    }
}

struct WineResultList_Previews: PreviewProvider {
    static var previews: some View {
        WineResultList()
            .environmentObject(ModelData())
    }
}

