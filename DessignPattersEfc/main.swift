//
//  main.swift
//  DessignPattersEfc
//
//  Created by eduardo fulgencio on 24/01/2020.
//  Copyright © 2020 Eduardo Fulgencio Comendeiro. All rights reserved.
//


//Singleton Design Pattern
// Es un Design Pattern de tipo Creational
// Asegura un solo óbjeto de una clase creada

print(Settings.shared.theme.description)
print(Settings.shared.changeTheme(to: .darkMode))
print(Settings.shared.theme.description)


//Delegation Design Pattern
// Un objeto tiene la responsabilidad sobr otro

var onlineShop = OnlineShop(shopName: "Amazon")
onlineShop.add(product: Product(name: "MacBook Pro"))
onlineShop.add(product: Product(name: "Apple Watch"))
onlineShop.add(product: Product(name: "iMac"))
onlineShop.sendAllProducts()


// Extension
// Permite añadir nuevas funcionalidades a una entity existentes.

let amount = 23.09
if let currency = amount.toCurrency() {
    print(currency)
}

// Observer
let messi = Player(name: "Messi", team: .barcelona)
let ronaldo = Player(name: "Ronaldo", team: .juventus)
let game = Game(players: [messi, ronaldo])

messi.scoreObservor = game
ronaldo.scoreObservor = game

messi.didScore()
ronaldo.didScore()
messi.didScore()
ronaldo.didScore()
messi.didScore()
ronaldo.didScore()

// Factory
// Encapsula los detalles de implementación de la creción de entidades
// que adhiren a una interfaz común.

let apple = FruitFactory.shared.makeFruit(ofType: .apple)
let orange = FruitFactory.shared.makeFruit(ofType: .orange)


