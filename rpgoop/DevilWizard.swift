//
//  DevilWizard.swift
//  rpgoop
//
//  Created by Lawrence Johnson on 12/29/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import Foundation

class DevilWizard: Enemy {
    
    override var loot: [String] {
        return ["Magic Wand","Dark Amulet", "Salted Pork"]
    }
    
    override var type: String {
        return "Devil Wizard";
    }
}