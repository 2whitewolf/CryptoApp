//
//  MarketDataServices.swift
//  CryptoApp
//
//  Created by Bogdan Sevcenco on 07.06.2022.
//

import Foundation
import Combine

 class MarketDataServices {
     @Published var marketData: MarketDataModel? = nil
     var marketDataSubscription: AnyCancellable?
     
     
     init() {
         getData()
     }
     public func getData() {
         guard let url = URL(string: "https://api.coingecko.com/api/v3/global") else { return }
         
         marketDataSubscription = NetworkingManager.download(url: url)
             .decode(type: GlobalData.self, decoder: JSONDecoder())
             .receive(on: DispatchQueue.main)
             .sink(receiveCompletion: NetworkingManager.handleCompletion, receiveValue: { [weak self] (returnedGlobalData) in
                 self?.marketData = returnedGlobalData.data
                 self?.marketDataSubscription?.cancel()
             })
     }
 }
