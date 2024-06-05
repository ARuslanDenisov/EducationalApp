//
//  GameView.swift
//  EducationalApp
//
//  Created by Руслан on 04.06.2024.
//

import SwiftUI

struct GameView: View {
    @State private var firstValue = 2.0
    @State private var firstRandom = 0
    @State private var secondValue = 2.0
    @State private var secondRandom = 0
    @State private var rounds = 0
    @State private var roundCounter = 0
    @State private var points = 0
    var body: some View {
        NavigationStack{
            Text("")
        }
        .onAppear {
            newRound()
        }
    }
    func newRound() {
        rounds += 1
        firstRandom = Int.random(in: 2...Int(firstValue))
        secondRandom = Int.random(in: 2...Int(secondValue))
    }
}

#Preview {
    GameView()
}
