//
//  ViewController.swift
//  rpgoop
//
//  Created by Lawrence Johnson on 12/29/15.
//  Copyright © 2015 Lawrence Johnson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var printLbl: UILabel!
    @IBOutlet weak var playerHpLbl: UILabel!
    @IBOutlet weak var enemyHpLbl: UILabel!
    @IBOutlet weak var enemyImg: UIImageView!
    @IBOutlet weak var chestBtn: UIButton!
    @IBOutlet weak var attBtn: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var chestMsg: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "Jester", hp: 200, attPow: 20)
        playerHpLbl.text = "\(player.hp)"
        
        genRandomEnemy()
    }
    
    @IBAction func onChestTapped(sender: AnyObject) {
        chestBtn.hidden = true
        printLbl.text = chestMsg
        NSTimer.scheduledTimerWithTimeInterval(2.1, target: self, selector: "genRandomEnemy", userInfo: nil, repeats: false)
    }
    
    @IBAction func attackTapped(sender: AnyObject) {
        if enemy.attemptAttack(player.attackPower) {
            printLbl.text = "Attacked \(enemy.type) for \(player.attackPower) HP"
            enemyHpLbl.text = "\(enemy.hp) HP"
        } else {
            printLbl.text = "Failed Attack!!!!!"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInv(loot)
            chestMsg = "\(player.name) found \(loot)"
            chestBtn.hidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLbl.text = ""
            printLbl.text = "Killed \(enemy.type)"
            enemyImg.hidden = true
        }
    }
    
    func genRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        if rand == 0 {
            enemy = Kimara(startingHp: 50, attPow: 12)
            enemyHpLbl.text = "\(enemy.hp)"
        } else {
            enemy = DevilWizard(startingHp: 60, attPow: 15)
            enemyHpLbl.text = "\(enemy.hp)"
        }
        printLbl.text = "A wild \(enemy.type) appeared"
        enemyImg.hidden = false
    }
    
}

