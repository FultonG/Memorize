//
//  EmojiMemoryGame.swift
//  Memorize
//
//  Created by Fulton Garcia on 9/7/20.
//  Copyright © 2020 Fulton Garcia. All rights reserved.
//

import SwiftUI

class EmojiMemoryGame: ObservableObject {
    @Published private var model: MemoryGame<String> = EmojiMemoryGame.createMemoryGame()
    
    static func createMemoryGame() -> MemoryGame<String> {
        let emojis: Array<String> = ["👻", "👽", "💀", "🎃"]
        return MemoryGame<String>(numberOfPairsOfCards: emojis.count) { pairIndex in return emojis[pairIndex] }
    }
    
    // MARK: - Access to the Model
    
    var cards: Array<MemoryGame<String>.Card> {
        return model.cards
    }
    
    // MARK: - Intent(s)
    
    func choose(card: MemoryGame<String>.Card) {
        model.choose(card: card)
    }
}
