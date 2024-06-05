//
//  ButtonElement.swift
//  EducationalApp
//
//  Created by Руслан on 05.06.2024.
//

import SwiftUI

struct ButtonElement: View {
    @State var text = "Start game"
    @State var color: AssetsTab.ColorChoose
    @State var height: Double
    var brighterColor: Color { Color(color.rawValue) }
    var cornerRadius = 5.0
    var textSize: Double
    var body: some View {
        ZStack{
            Color(.black).opacity(0.27)
                .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
                .offset(y: 2)
                
            ZStack {
                LinearGradient(stops: [.init(color: Color("\(color.rawValue)Light"), location: -0.01),
                                       .init(color: Color(color.rawValue), location: 0.01)
                ], startPoint: .center, endPoint: .bottom)
                
                
                Text(text.uppercased())
                    .font(.custom("ST-SimpleSquare", size: textSize))
                    .foregroundStyle(color == .yellow ? .grayText : .white)
                    .offset(y: 2)
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(.grayText.opacity(0.7), lineWidth: 1)
        }
        .frame(height: height)
        
    }
    init(text: String, color: AssetsTab.ColorChoose, height: Double, cornerRadius: Double = 5.0, textSize: Double) {
        self.text = text
        self.color = color
        self.height = height
        self.cornerRadius = cornerRadius
        self.textSize = textSize
    }
}

#Preview {
    ButtonElement(text: "New game", color: .yellow, height: 30, textSize: 10)
}
