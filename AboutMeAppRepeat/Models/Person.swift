//
//  Person.swift
//  AboutMeAppRepeat
//
//  Created by Goodwasp on 07.08.2023.
//

struct Person {
    let name: String
    let lastname: String
    let age: Int
    let bio: String
    
    func getPerson() -> Person {
        Person(
            name: "Dobrynia",
            lastname: "Osipov",
            age: 23,
            bio: "Born in May of 2000. Raised in the city of Vladimir. Educated at Moscow Power Engineering Institute (MPEI). Currently employed at QTE. Also studying iOS development using Swift at SwiftBook."
        )
    }
}
