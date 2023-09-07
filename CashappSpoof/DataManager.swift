//
//  DataManager.swift
//  CashappSpoof
//
//  Created by Ethan Keiser on 12/14/21.
//

import Foundation
struct Payment {
    let userName: String
    let amount: Int
}
extension String {
    static func toCurrency(_ am: Int) -> String {
        var Amount = NSNumber(integerLiteral: am)
        var currencyFormatter = NumberFormatter()
        currencyFormatter.usesGroupingSeparator = true
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale.current

        return currencyFormatter.string(from: Amount)!
    }
}
class DataManger {
    static let shared = DataManger()
    var totalFunds = 20531
    
   // note from kerta1n:
   // PLEASE USE CHATGPT TO CHANGE THE FOLLOWING CODE! in the case you reuse this app, it's better that the scammer does NOT catch on that you are using the same list of names.
   // GPT prompt: the following code is from a swift file that is part of a cashapp clone. Please change the usernames to a mix of real names and usernames people would use, and vary the amounts to be between 200 and 1500

    var payment = [Payment(userName: "CoolCat123", amount: 1400),
               Payment(userName: "JohnDoe", amount: 800),
               Payment(userName: "TechNerd99", amount: 650),
               Payment(userName: "SoccerFan23", amount: 300),
               Payment(userName: "AdventureSeeker", amount: 1200),
               Payment(userName: "EmmaParker", amount: 455),
               Payment(userName: "Bookworm45", amount: 730),
               Payment(userName: "MeganSmith", amount: 950),
               Payment(userName: "TravelBug87", amount: 1300),
               Payment(userName: "MovieBuff60", amount: 550),
               Payment(userName: "GuitarHero88", amount: 1120),
               Payment(userName: "ArtEnthusiast", amount: 750),
               Payment(userName: "CharlieBrown", amount: 600),
               Payment(userName: "CoffeeAddict", amount: 1450),
               Payment(userName: "WilliamTaylor", amount: 100),
               Payment(userName: "YogaMaster", amount: 1100),
               Payment(userName: "SurfingPro", amount: 420),
               Payment(userName: "GamerGirl22", amount: 990),
               Payment(userName: "Fashionista23", amount: 880),
               Payment(userName: "TechGuru", amount: 640),
               Payment(userName: "FoodieLover", amount: 1430),
               Payment(userName: "LucasTurner", amount: 110),
               Payment(userName: "AriaCollins", amount: 1220),
               Payment(userName: "MusicFanatic", amount: 420)
        ]
}
