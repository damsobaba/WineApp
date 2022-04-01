//
//  wineTypeButtonView.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//

import SwiftUI

// faire appel reseau avec combine


struct WineTypeButtonView: View {
    @State private var modalB = false
    
    var body: some View {
        
        HStack{
            getButton(image: "red_wine", name: "Rouge")
            getButton(image: "whiteWine", name: "Blanc")
            getButton(image: "rosé", name: "Rosé")
            getButton(image: "champagne", name: "Champagne")
        }
       // .padding(.horizontal,)
    }
    
    func getButton(image: String, name: String ) -> some View {
        VStack {
            Button(action: { modalB.toggle() } ) {
                Image(image)
                    .resizable()
                    .frame(width: 70, height: 70)
                    .cornerRadius(9)
                    .shadow(radius: 10)
            }
            Text(name)
        }
       .padding(.horizontal, 5)
    }
}


struct wineTypeButton_Previews: PreviewProvider {
    static var previews: some View {
        WineTypeButtonView()
    }
}
