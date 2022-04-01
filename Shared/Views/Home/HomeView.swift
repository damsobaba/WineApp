//
//  ContentView.swift
//  Shared
//
//  Created by Adam Mabrouki on 25/03/2022.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject var modelData: ModelData
    @EnvironmentObject var viewModel: WineViewModel
    @State private var receipeName: String = ""
    @State private var modalIsPresented = false
    
    
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.gray, .white]), center: .center, startRadius: 150, endRadius: 1170)
                .ignoresSafeArea()
            
            VStack(alignment: .leading) {
                Image("wineGlass")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(90)
                    .shadow(radius: 10)
                    .padding()
                Text("Let's find best wines")
                    .padding()
                    .font(Font.title.bold())
                
                // Zstack de mes couiiiiiiiiiiiiiiiiiiiiiiiiiiiiiillllleeeeeesssssssssss
                ZStack(alignment: .trailing) {
                    
                    TextField("What are you eating", text: self.$receipeName)
                        .frame(width: 290 , height: 55)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding([.horizontal], 4)
                        .padding([.horizontal], 24)
                        .background(.white)
                        .cornerRadius(16)
                        .shadow(radius: 10)
                    
                    Button(action: {
                        viewModel.getMonbousain(receipeName)
                        modalIsPresented = true
                    } )  {
                        
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 20, height: 20)
                            .accentColor(.orange)
                    }
                    .padding(.horizontal,11)
                    .sheet(isPresented: $modalIsPresented) {
                        WineResultList(modelData: _modelData)
                        
                        
                    }
                }
                .padding(.horizontal, 11)
                
                Text("What kind of wine?")
                    .padding()
                    .font(Font.title2.bold())
               
                WineTypeButtonView()
                    .padding(.horizontal, 11)
                
                    VStack(spacing: -100) {
                    Text("Explore regions")
                        .offset(x: -100, y: -3)
                        .padding()
                        .font(Font.title2.bold())
                       .padding()
                       ExploreView(items: modelData.wine)
                            .padding()
                    }
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(ModelData())
    }
}
