//
//  Service.swift
//  MyVin
//
//  Created by Adam Mabrouki on 29/03/2022.
//

import Foundation
import Combine

class WineDataService: ObservableObject {
    
    @Published var wineData: [WineData] = []
    var wineSubscription: AnyCancellable?
    
    func getWineData(food: String, completion: @escaping (WineData) -> Void) {
        guard let url = URL(string: "https://api.spoonacular.com/food/wine/pairing?apiKey=d9f5cf13992449569415797281fff104&food=\(food)") else {fatalError()}
        URLSession.shared.dataTaskPublisher(for: url)
            .subscribe(on: DispatchQueue.global(qos: .background))
            .tryMap(handleOutput)
            .decode(type: WineData.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .sink { completion in
                switch completion {
                case .finished:
                    print(completion)
                case .failure(let error):
                    print(error)
                }
            } receiveValue: { [weak self] returnedWine in
                self?.wineData = [returnedWine]
                completion(returnedWine)
                self?.wineSubscription?.cancel()
            }
        
    }
    
    func handleOutput(outPut: URLSession.DataTaskPublisher.Output) throws ->  Data {
        guard let response = outPut.response as? HTTPURLResponse, response.statusCode >= 200 && response.statusCode < 300 else {
            throw URLError(.badServerResponse)
        }
        return outPut.data
    }
}

class WineViewModel: ObservableObject {
    
//    @Published var wines: [WineData] = []
    @Published var products: [ProductMatch] = []
    
    private let dataService = WineDataService()
    private var cancelables = Set<AnyCancellable>()
    
//    init() {
//        addSubscribers()
//    }
//
//    func addSubscribers() {
//        dataService.$wineData
//            .sink { [weak self] (returnedWine) in
//                self?.wines = returnedWine
//            }
//            .store(in: &cancelables)
//    }
    
    func getMonbousain(_ oui: String) {
        dataService.getWineData(food: oui) { wines in
            self.products = wines.productMatches
        }
    }
    
}
