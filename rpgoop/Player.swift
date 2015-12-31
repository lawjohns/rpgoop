//
//  Player.swift
//  rpgoop
//
//  Created by Lawrence Johnson on 12/29/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class Player: Charactor {
    private var _name = "Player"
    
    var name: String {
        get {
            return _name
        }
    }
    
    private var _inventory = [String]()
    
    var inventory: [String] {
        return _inventory
    }
    
    func addItemToInv(item: String) {
        _inventory.append(item)
    }
    
    convenience init(name: String, hp: Int, attPow: Int) {
        self.init(startingHp: hp, attPow: attPow)
        _name = name
    }
}