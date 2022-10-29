//
//  User.swift
//  LoginApp
//
//  Created by albik on 29.10.2022.
//

struct User {
    let username = "User"
    let password = "Password"
    let person: Person
}

struct Person {
    let name = "Alexandr"
    let surname = "Bikteev"
    var fullname: String {
        "\(name) \(surname)"
    }
    let age = 34
    let bio = """
"""
}
