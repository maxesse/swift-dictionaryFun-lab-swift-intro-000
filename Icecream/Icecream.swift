//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe":      "Peanut Butter and Chocolate",
        "Tim":      "Natural Vanilla",
        "Sophie":   "Mexican Chocolate",
        "Deniz":    "Natural Vanilla",
        "Tom":      "Mexican Chocolate",
        "Jim":      "Natural Vanilla",
        "Susan":    "Cookies 'N' Cream"
    ]
    
    
    
    
    // 2.
    func names(forFlavor flavor: String) -> [String] {
        var namesArray: [String] = []
        for (person,flavorToFind) in favoriteFlavorsOfIceCream {
            if (flavorToFind == flavor) {
                namesArray.append(person)
            }
        }
        return namesArray
    }
    
    
    
    
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var counter: Int = 0
        for (_,flavorToFind) in favoriteFlavorsOfIceCream {
            if (flavor == flavorToFind){
                counter += 1
            }
        }
        return counter
    }
    
    
    
    
    
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        for (personToFind,flavor) in favoriteFlavorsOfIceCream {
            if (person == personToFind) {
                return flavor
            }
        }
        return nil
    }
    
    
    
    
    
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            favoriteFlavorsOfIceCream[forPerson] = flavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    // 6.
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream.removeValue(forKey: person)
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    // 7.
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    }
    
    
    
    
    
    
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    
    // 9.
    func attendeeList() -> String {
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        var list: String = ""
        for (index,name) in allNames.enumerated() {
            if (index + 1 < allNames.count) {
                list = list + "\(name) likes \(favoriteFlavorsOfIceCream[name] ?? "")\n"
            } else {
                list = list + "\(name) likes \(favoriteFlavorsOfIceCream[name] ?? "")"
            }
        }
        return list
    }
    
    
    
    
    
    
    

}
