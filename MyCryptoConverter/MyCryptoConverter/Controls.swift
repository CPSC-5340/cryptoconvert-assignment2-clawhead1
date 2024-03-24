//
//  Controls.swift
//  MyCryptoConverter
//
//  Created by Chase Lawhead on 3/24/24.
//

import SwiftUI
import UIKit

extension UIApplication {
    func endEditing(_ force: Bool) {
        if let windowScene = self.connectedScenes.first as? UIWindowScene {
            windowScene.windows
                .first(where: { $0.isKeyWindow })?
                .endEditing(force)
        }
    }
}
