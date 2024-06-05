//
//  ButtonElementWithImage.swift
//  EducationalApp
//
//  Created by Руслан on 05.06.2024.
//

import SwiftUI

struct ButtonElementWithImage: View {
    @State var text = ""
    @State var color: AssetsTab.ColorChoose
    @State var image: AssetsTab.Images
    @State var height: Double
    @State var width: Double
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
                
                
            }
            .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
            RoundedRectangle(cornerRadius: cornerRadius)
                .strokeBorder(.grayText.opacity(0.7), lineWidth: 1)
            HStack{
                Image(systemName: image.rawValue)
                    .resizable()
                    .scaledToFit()
                    .fontWeight(.bold)
                    .foregroundStyle(.white)
                    .padding(15)
                
                if !text.isEmpty{
                    Text(text.uppercased())
                        .padding()
                        .font(.custom("ST-SimpleSquare", size: textSize))
                        .foregroundStyle(color == .yellow ? .grayText : .white)
                        .offset(y: 2)
                    Spacer()
                }
                
            }
        }
        .frame(width: width, height: height)
        
    }
    init(text: String, color: AssetsTab.ColorChoose, image: AssetsTab.Images, height: Double, width: Double, cornerRadius: Double = 5.0, textSize: Double) {
        self.text = text
        self.color = color
        self.image = image
        self.height = height
        self.width = width
        self.cornerRadius = cornerRadius
        self.textSize = textSize
    }
}

#Preview {
    ButtonElementWithImage(text: "Accept", color: .green, image: .checkmark, height: 50, width: 200, textSize: 20)
}
