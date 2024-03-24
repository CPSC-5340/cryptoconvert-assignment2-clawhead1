//
//  CryptoConverterViewModel.swift
//  MyCryptoConverter
//
//  Created by Chase Lawhead on 3/24/24.
//

import Foundation

class CryptoConverterViewModel : ObservableObject {
    
    @Published private(set) var listOfCards = [ConvertModel<CryptoItemModel>]()
    
    func fetchCards() {
        self.listOfCards = [
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "USD", cryptoCode: "USD", multiplier: 66447.90)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Ethereum", cryptoCode: "ETH", multiplier: 19.45)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "Tether", cryptoCode: "tether", multiplier: 66126.81)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "BNB", cryptoCode: "BNB", multiplier: 116.42)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "USD Coin", cryptoCode: "USDC", multiplier: 66447)),
            ConvertModel(cardContent: CryptoItemModel(cryptoName: "XRP", cryptoCode: "XRP", multiplier: 104990.41))
        ]
    }
    
    
    func convertToCurrency(_ bitcoin: String, multiplier: Double) -> String {
        guard let bitcoinValue = Double(bitcoin) else { return "0" }
        let convertedValue = bitcoinValue * multiplier
        return String(format: "%.2f", convertedValue)
    }
}
