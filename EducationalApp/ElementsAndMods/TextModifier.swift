//
//  TextModificator.swift
//  EducationalApp
//
//  Created by Руслан on 05.06.2024.
//

import Foundation
import SwiftUI

struct TextModifier: ViewModifier {
    @State var size: Double
    func body(content: Content) -> some View {
        content
            .padding()
            .font(.custom("ST-SimpleSquare", size: size))
            .foregroundStyle(.grayText)
            .offset(y: 2)
    }
    init(size: Double) {
        self.size = size
    }
}
