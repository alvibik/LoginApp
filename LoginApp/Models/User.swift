//
//  User.swift
//  LoginApp
//
//  Created by albik on 29.10.2022.
//

struct User {
    private let username: String
    private let password: String
    private let person: Person
    
    static func setupLogonData() -> User {
        User(username: "PushkinAS", password: "Arina", person: Person.setupPerson())
    }
}

struct Person {
    private let name: String
    private let surname: String
    private let bio: String
    
    static func setupPerson() -> Person {
        Person(
            name: "Александр",
            surname: "Пушкин",
            bio: """
            
            """)
    }
}
