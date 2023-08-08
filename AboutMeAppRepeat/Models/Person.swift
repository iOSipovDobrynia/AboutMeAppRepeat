//
//  Person.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 07.08.2023.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            login: "Dobrynia",
            password: "Osipov",
            person: Person.getPerson()
        )
    }
}

struct Person {
    let name: String
    let lastname: String
    let age: Int
    let bio: String
    
    static func getPerson() -> Person {
        Person(
            name: "Dobrynia",
            lastname: "Osipov",
            age: 23,
            bio: "Born in May of 2000. Raised in the city of Vladimir. Educated at Moscow Power Engineering Institute (MPEI). Currently employed at QTE. Also studying iOS development using Swift at SwiftBook."
        )
    }
}
