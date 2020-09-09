//
//  Theme.swift
//  Memorize
//
//  Created by Fulton Garcia on 9/8/20.
//  Copyright © 2020 Fulton Garcia. All rights reserved.
//

import SwiftUI

struct Theme {
    var name: String
    var set: Array<String>
    var numberOfCards: Int
    var color: Color
}

let halloween = Theme(name: "Halloween", set: ["👻", "👽", "💀", "🎃"], numberOfCards: 4, color: Color.orange)
let winter = Theme(name: "Winter", set: ["🥶", "❄️", "☃️"], numberOfCards: 3, color: Color.blue)
let candyland = Theme(name: "Candy Land", set: ["🍬", "🍭", "🍫", "🍩"], numberOfCards: 4, color: Color.pink)
let themes: [Theme] = [halloween, winter, candyland]
