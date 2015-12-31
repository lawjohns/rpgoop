//
//  Charactor.swift
//  rpgoop
//
//  Created by Lawrence Johnson on 12/29/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class Charactor {
    private var _hp: Int = 100
    private var _attPow: Int = 10
    
    var attackPower: Int {
        get {
            return _attPow
        }
    }
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var isAlive: Bool {
        if _hp <= 0 {
            return false
        }
        else {
            return true
        }
    }
    
    init(startingHp: Int, attPow: Int) {
        self._hp = startingHp
        self._attPow = attPow
    }
    
    func attemptAttack(attPow: Int) -> Bool {
        self._hp -= attPow
        
        return true
    }
}