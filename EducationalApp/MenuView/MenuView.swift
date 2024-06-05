//
//  MenuView.swift
//  EducationalApp
//
//  Created by Руслан on 05.06.2024.
//

import SwiftUI

struct MenuView: View {
    var body: some View {
        NavigationStack{
            ZStack{
                VStack{
                    Text("Education game")
                    NavigationLink (destination: GameView()) {
                        Text("Start game")
                    }
                    NavigationLink (destination: OptionView()) {
                        Text("Options")
                    }
                    NavigationLink (destination: CreditView()) {
                        Text("Credits")
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.yellow)
        }
    }
}

#Preview {
    MenuView()
}
