//
//  Array+Only.swift
//  Memorize
//
//  Created by Fulton Garcia on 9/7/20.
//  Copyright © 2020 Fulton Garcia. All rights reserved.
//

import Foundation

extension Array {
    var only: Element? {
        count == 1 ? first : nil
    }
}
