//
//  User.swift
//  MVC - User Login Page
//
//  Created by Mertcan Ünek on 24.07.2023.
//

import Foundation

struct User{
    let name, username: String
    let age: Int
    let address: Address
}

struct Address{
    let city: String
    let country: String
    
}
