//
//  TDD_LabTests.swift
//  TDD LabTests
//
//  Created by J Madsen on 5/11/23.
//

import XCTest
@testable import TDD_Lab

final class TDD_LabTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}

class TestPerson: XCTestCase {
    func testFullName() {
        let person = Person(firstName: "John", lastName: "Doe", age: 0)
        XCTAssertEqual(person.fullName, "John Doe")
    }
    
    func testAge() {
        let person = Person(firstName: "Stevie", lastName: "Wonder", age: 39)
        XCTAssertEqual(person.age, 39)
    }
    
    func testBirthday() {
        var person = Person(firstName: "Stevie", lastName: "Wonder", age: 39)
        
        person.birthday()
        XCTAssertEqual(person.age, 40)
    }
    
    func testIsAdult() {
        let person1 = Person(firstName: "Stevie", lastName: "Wonder", age: 39)
        let person2 = Person(firstName: "Jimmy", lastName: "Page", age: 9)
        
        XCTAssertTrue(person1.isAdult)
        XCTAssertFalse(person2.isAdult)
    }
    
    func testHasPet() {
        var person = Person(firstName: "Stevie", lastName: "Wonder", age: 39)

        person.buyPet(pet: Pet(name: "Doggy", type: "Dog"))
        
        XCTAssertNotNil(person.pet)
    }
    
    func testToss() {
        var person = Person(firstName: "Stevie", lastName: "Wonder", age: 39)
        
        XCTAssertThrowsError(try person.toss("Baseball"))
    }
}
