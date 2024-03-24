//
//  Home.swift
//  MyCryptoConverter
//
//  Created by Chase Lawhead on 3/24/24.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationView {
            List {
                NavigationLink("World Currency Exchange", destination: Converter())
                NavigationLink("Crypto Exchange", destination: CryptoConverter())
            }
            .navigationBarTitle("Conversion App")
        }
    }
}

#Preview {
    Home()
}
