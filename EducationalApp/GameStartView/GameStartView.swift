//
//  ContentView.swift
//  EducationalApp
//
//  Created by Руслан on 04.06.2024.
//

import SwiftUI

struct GameStartView: View {
    @State private var firstValue = 2.0
    @State private var secondValue = 2.0
    @State private var rounds = 5.0
    var body: some View {
        NavigationStack {
            VStack {
                Spacer()
                HStack {
                    Text("Первое число ")
                    Text("\(Int(firstValue))")
                }
                
                
                Slider(value: $firstValue, in: 2...10, step: 1)
                
                HStack {
                    Text("Второе число ")
                    Text("\(Int(secondValue))")
                }
                Slider(value: $secondValue, in: 2...10, step: 1)
                HStack {
                    Text("Кол-во раундов \(Int(rounds))")
                    Stepper("", value: $rounds, in: 5...20, step: 5.0, format: .number)
                }
                Spacer()
                NavigationLink(destination: GameView(), label: {
                    Text("Новая игра")
                })
                Spacer()
            }
            .padding()
        }
    }
}

#Preview {
    GameStartView()
}
