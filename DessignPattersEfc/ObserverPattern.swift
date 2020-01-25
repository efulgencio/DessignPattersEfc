//
//  ObserverPatter.swift
//  DessignPattersEfc
//
//  Created by eduardo fulgencio on 24/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//

protocol ScoreObservor {
    func scoreUpdate()
}


enum Team: String {
    case barcelona, juventus
}

class Player {
    
    var name: String
    let team: Team
    var goalCount = 0
    var scoreObservor: ScoreObservor?
    
    init(name: String, team: Team) {
        self.name = name
        self.team = team
    }
    
    func didScore() {
        goalCount += 1
        if let scoreObservor = scoreObservor {
            scoreObservor.scoreUpdate()
        }
    }
    
}

class Game: ScoreObservor {
    
    var players = [Player]()
    
    init(players: [Player]) {
        print("game started")
        self.players = players
    }
    
    func scoreUpdate() {
        
        var barcelonaScore = 0
        var juventusScore = 0
        
        for player in players {
            
            switch player.team {
            case .barcelona:
                barcelonaScore += player.goalCount
            case .juventus:
                juventusScore += player.goalCount
            }
        }
        print("Barcelona \(barcelonaScore) - Juventus \(juventusScore)")
    }
    
}
