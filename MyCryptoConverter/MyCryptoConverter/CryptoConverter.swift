//
//  CryptoConverter.swift
//  MyCryptoConverter
//
//  Created by Chase Lawhead on 3/24/24.
//

import SwiftUI

struct CryptoConverter: View {
    @ObservedObject var viewModel = CryptoConverterViewModel()
    @State private var bitcoinAmount = "1"
    


    var body: some View {
        VStack {
            HStack {
                Text("Bitcoin:")
                    .font(.headline)
                    .padding(.leading, 50)
                
                TextField("Enter Bitcoin amount", text: $bitcoinAmount)
                    .keyboardType(.decimalPad)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding(.trailing, 50)
            }.padding(.top, 50)
                

            Spacer()

            List {
                ForEach(viewModel.listOfCards) { card in
                    HStack {
                        Text(card.cardContent.cryptoName)
                            .font(.headline)
                        Spacer()
                        Text(viewModel.convertToCurrency(bitcoinAmount, multiplier: card.cardContent.multiplier))
                            .font(.subheadline)
                    }
                    .padding()
                }
            }
        }
        .onAppear {
            viewModel.fetchCards()
            
        }
        .onTapGesture {
                    UIApplication.shared.endEditing(true)
                }
    }
}
#Preview {
    CryptoConverter()
}
