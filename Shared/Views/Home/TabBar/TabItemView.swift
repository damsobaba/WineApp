//
//  TabItemView.swift
//  MyVin
//
//  Created by Adam Mabrouki on 28/03/2022.
//

import SwiftUI

struct TabItemView: View {
    let data: TabItemData
    let isSelected: Bool
    
    var body: some View {
        VStack{
            Image(systemName: isSelected ? data.selectedImage : data.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 32, height: 32)
                .accentColor(.orange)
            Spacer().frame(height: 4)
            
            Text(data.title)
                .foregroundColor(isSelected ? .black : .gray)
                .font(.system(size: 14))
        }
    }
}

//struct TabItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TabItemView()
//    }
//}



