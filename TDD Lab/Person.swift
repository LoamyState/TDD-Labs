//
//  Person.swift
//  TDD LabTests
//
//  Created by J Madsen on 5/11/23.
//

import Foundation

enum PersonError: Error, LocalizedError {
    case baseball
}

struct Person {
    var firstName: String
    var lastName: String
    var fullName: String {
        return firstName + " " + lastName
    }
    var age: Int
    var isAdult: Bool {
        age >= 18
    }
    var pet: Pet?
    
    mutating func birthday() {
        age += 1
    }
    
    mutating func buyPet(pet: Pet) {
        self.pet = pet
    }
    
    func toss(_ type: String) throws {
        guard type.lowercased() != "baseball" else { throw PersonError.baseball }
        
        print("You tossed the \(type)")
    }
}

struct Pet {
    var name: String
    var type: String
}
