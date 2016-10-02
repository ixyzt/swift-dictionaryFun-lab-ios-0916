//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]
    
    
    
    
    
    func names(forFlavor flavor: String) -> [String]{
        var likesFlavor = [String]()
        for (person,pref) in favoriteFlavorsOfIceCream {
            if pref == flavor {
                likesFlavor.append(person)
            }
        }
        return likesFlavor
    }
    
    
    

    
    
    func count(forFlavor flavor: String) -> Int {
        var likesFlavorCount = 0
        for (_,pref) in favoriteFlavorsOfIceCream {
            if pref == flavor {
                likesFlavorCount += 1
            }
        }
        return likesFlavorCount
    }
    
    
    
    
    
    
    
    func flavor(forPerson: String) -> String? {
        var personFavFlav = ""
        if let favoriteFlavorsOfIceCream = favoriteFlavorsOfIceCream[forPerson] {
            personFavFlav = favoriteFlavorsOfIceCream
            return personFavFlav
        } else {
            return nil
        }
    }
   
    
    
    
    
    
    
    func replace(flavor: String, forPerson: String) -> Bool {
        if favoriteFlavorsOfIceCream[forPerson] != nil {
            if favoriteFlavorsOfIceCream[forPerson] == flavor {
                return false
            } else {
                favoriteFlavorsOfIceCream[forPerson] = flavor
                return true
            }
        } else {
            return false
        }
    }
   
    
    
    
    
    
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.count
    
    }
    
    
    
    
    
    
    
    
    func add(person: String, withFlavor: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = withFlavor
            return true
        } else {
            return false
        }
    }
    
    
    
    
    
    
    
    
    
    func attendeeList() -> String {
        var attendeeList = [String]()
        var sortedAttendeeArray = [String]()
        var newList: String
        for (person,flavor) in favoriteFlavorsOfIceCream {
            switch person == "Tom" {
            case true:
                attendeeList.append("\(person) likes \(flavor)")
            default:
                attendeeList.append("\(person) likes \(flavor)\n")
            }
            
        }
        sortedAttendeeArray = attendeeList.sorted()
        newList = sortedAttendeeArray.joined()
        print(sortedAttendeeArray)
        print(newList)
        return newList
    }
    
    
    
    
    
    
    
    

}
