//
//  Enemy.swift
//  rpgoop
//
//  Created by Lawrence Johnson on 12/29/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class Enemy: Charactor {
    var loot: [String] {
        return ["Rusty Dager", "100 Gold"]
    }
    
    var type: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        if !isAlive {
            let rand = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[rand]
        }
        return nil
    }
}