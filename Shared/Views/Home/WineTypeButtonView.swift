//
//  wineTypeButtonView.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//

import SwiftUI


struct WineTypeButtonView: View {
    @State private var modalB = false
    
    var body: some View {
        
        HStack(spacing: 20) {
            VStack {
                Button(action: { modalB.toggle() } ) {
                    Image("red_wine")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .cornerRadius(9)
                        .shadow(radius: 10)
                }
                Text("Red")
            }
            VStack {
                Button(action: { modalB.toggle() } ) {
                    Image("whiteWine")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .cornerRadius(9)
                        .shadow(radius: 10)
                }
                Text("White")
            }
            VStack {
                Button(action: { modalB.toggle() } ) {
                    Image("rosé")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .cornerRadius(9)
                        .shadow(radius: 10)
                }
                Text("Rosé")
            }
            VStack {
                Button(action: { modalB.toggle() } ) {
                    Image("champagne")
                        .resizable()
                        .frame(width: 70, height: 70)
                        .cornerRadius(9)
                        .shadow(radius: 10)
                }
                Text("Champagne")
            }
        }
    }
}

struct wineTypeButton_Previews: PreviewProvider {
    static var previews: some View {
        WineTypeButtonView()
    }
}
