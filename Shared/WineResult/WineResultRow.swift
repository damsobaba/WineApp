//
//  WineResultRow.swift
//  MyVin
//
//  Created by Adam Mabrouki on 29/03/2022.
//

import SwiftUI

struct WineResultRow: View {
    
//    var wine: WineData
    var product: ProductMatch
    
    var body: some View {
            ZStack {
                AsyncImage(url: URL(string: product.imageURL))
                    //.resizable()
                    .frame(width: 390, height: 150)
                    .aspectRatio(contentMode: .fill)
                    .border(Color.gray, width: 5)
                    .cornerRadius(8)
                    .background(Color.purple)
                VStack(alignment: .leading){
                    Spacer()
                    HStack {
                        Image(systemName: "mappin.square")
                            .resizable()
                            .foregroundColor(.white)
                            .frame(width: 20, height: 20)
                        Text(product.title)
                            .foregroundColor(.black)
                        // .font(Font.title2.bold())

                        Spacer()
                    }

                    Text(product.price)
                        .foregroundColor(.black)
                        .font(Font.subheadline.bold())
                }
                .padding()
                .frame(width: 370, height: 150)
            }
            .frame(width: 370, height: 150)

            .border(Color.gray, width: 5)
            .cornerRadius(8)
    }
    
}


//struct WineResultRow_Previews: PreviewProvider {
//    static var wine = WineData(id:12, pairedWines: ["M"], pairingText: "", productMatches: [ProductMatch])
//
//    static var previews: some View {
//        WineResultRow(wine: wine[1])
//    }
//}

extension UIImageView {
    func load(url:URL) {
        DispatchQueue.global().async { [weak self] in
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        self?.image = image
                    }
                }
            }
        }
    }
    
}

