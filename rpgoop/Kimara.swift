//
//  Kimara.swift
//  rpgoop
//
//  Created by Lawrence Johnson on 12/29/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class Kimara: Enemy {
    let IMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide","Kimara Venom", "Rare Trident"]
    }
    
    override var type: String {
        return "Kimara";
    }
    
    override func attemptAttack(attPow: Int) -> Bool {
        if attPow >= IMUNE_MAX {
            return super.attemptAttack(attPow)
        }
        else {
            return false
        }
    }
}