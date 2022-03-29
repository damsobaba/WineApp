//
//  WineResultRow.swift
//  MyVin
//
//  Created by Adam Mabrouki on 29/03/2022.
//

import SwiftUI

struct WineResultRow: View {
    
    var wine: Wine
    
        var body: some View {
            ZStack {
                wine.image
                    .resizable()
                    .frame(width: 390, height: 150)
                    .aspectRatio(contentMode: .fit)
                    .border(Color.gray, width: 5)
                    .cornerRadius(8)
                VStack(alignment: .leading){
                    HStack {
                    Image(systemName: "mappin.square")
                        .resizable()
                        .foregroundColor(.white)
                        .frame(width: 20, height: 20)
                Text(wine.state)
                    .foregroundColor(.white)
                    .font(Font.largeTitle.bold())
                }
            
                Text(wine.name)
                    .foregroundColor(.white)
                    .font(Font.subheadline.bold())
                }
                .offset(x: -121, y: 40)
            }
        }
    }


struct WineResultRow_Previews: PreviewProvider {
    static var wine = ModelData().wine
    
    static var previews: some View {
        WineResultRow(wine: wine[1])
    }
}
