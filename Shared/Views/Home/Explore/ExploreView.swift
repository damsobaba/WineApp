//
//  ExploreView.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//

import SwiftUI

struct ExploreView: View {
    
    var items: [Wine]
    
    var body: some View {
        ScrollView(.horizontal) {
                    LazyHStack {
                        ForEach(items) { wine in
                            WineExploreRow(wine: wine)
                            
                        }
                    }
                }
        
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var landmarks = ModelData().wine
    static var previews: some View {
        ExploreView(items: Array(landmarks.prefix(4)))
    }
}
