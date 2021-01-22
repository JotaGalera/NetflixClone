//
//  Extensions.swift
//  iOS
//
//  Created by Javier Galera Garrido on 12/01/2021.
//

import SwiftUI

extension UIScreen {
    static let screenWidth = UIScreen.main.bounds.size.width
    static let screenHeight = UIScreen.main.bounds.size.height
}

extension String {
    func widthOfString(usingFont font: UIFont) -> CGFloat {
        let fontAttributes = [NSAttributedString.Key.font: font]
        let size = self.size(withAttributes: fontAttributes)
        return size.width
    }
}

extension Color {
    static let customGray = Color("lightGray")
    static let customDarkGray = Color("darkGray")
}
