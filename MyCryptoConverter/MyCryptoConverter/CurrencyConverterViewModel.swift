//
//  ConverterViewModel.swift
//  MyCryptoConverter
//
//  Created by Chase Lawhead on 3/24/24.
//

import Foundation

class CurrencyConverterViewModel : ObservableObject {
    
   @Published private(set) var listOfCards = [ConvertModel<CurrencyItemModel>]()
    
    func fetchCards() {
        self.listOfCards = [
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "US Dollar", currencyCode: "USD", countryFlag: "🇺🇸", multiplier: 1)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chinese Yuan", currencyCode: "CNY", countryFlag: "🇨🇳", multiplier: 6.94)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Canadian Dollar", currencyCode: "CAD", countryFlag: "🇨🇦", multiplier: 1.36)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Australian Dollar", currencyCode: "AUD", countryFlag: "🇦🇺", multiplier: 1.49)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Indian Ruppe", currencyCode: "INR", countryFlag: "🇮🇳", multiplier: 82.60)),
            ConvertModel(cardContent: CurrencyItemModel(currencyName: "Chilean Peso", currencyCode: "CLP", countryFlag: "🇨🇱", multiplier: 832.04)),
        ]
    }
    
    func flip(card: ConvertModel<CurrencyItemModel>) {
        if let index = findIndex(card: card) {
            listOfCards[index].isFront.toggle()
        }
    }
    
    func findIndex(card: ConvertModel<CurrencyItemModel>) -> Int? {
        for index in 0..<listOfCards.count {
            if card.id == listOfCards[index].id {
                return index
            }
        }
        return nil
    }
}
