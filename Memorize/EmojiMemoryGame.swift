//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Fulton Garcia on 9/7/20.
//  Copyright © 2020 Fulton Garcia. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String>
    var theme: Theme
    
    init() {
        let selectedTheme = themes.randomElement()!
        self.theme = selectedTheme
        model = EmojiMemoryGame.createMemoryGame(with: selectedTheme)
    }
    
    
    static func createMemoryGame(with theme: Theme) -> MemoryGame<String> {
        return MemoryGame<String>(numberOfPairsOfCards: theme.numberOfCards) { pairIndex in return theme.set[pairIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    var score: Int {
        return model.score
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
    
    func reset() {
        theme = themes.randomElement()!
        model = EmojiMemoryGame.createMemoryGame(with: theme)
    }
}
