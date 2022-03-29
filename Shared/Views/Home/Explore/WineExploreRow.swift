//
//  LandmarkRow.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//

import SwiftUI

struct WineExploreRow: View {
    var wine: Wine

    var body: some View {
        ZStack {
            wine.image
                .resizable()
                .frame(width: 150, height: 150)
                .cornerRadius(8)
            VStack(alignment: .leading){
            HStack{
                Image(systemName: "mappin.square")
                    .resizable()
                    .foregroundColor(.white)
                    .frame(width: 20, height: 20)
            Text(wine.state)
                .foregroundColor(.white)
                .font(Font.title2.bold())
            }
        
            Text(wine.name)
                .foregroundColor(.white)
                .font(Font.subheadline.bold())
            }
           .offset(x: 0, y: 50)
        }
    }
}

struct WineExploreRow_Previews: PreviewProvider {
    static var wine = ModelData().wine
    
    static var previews: some View {
        WineExploreRow(wine: wine[1])
    }
}
