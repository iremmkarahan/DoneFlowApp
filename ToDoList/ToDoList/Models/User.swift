//
//  User.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import Foundation


struct User: Codable {
    let id: String
    let name: String
    let email: String
    let joined: TimeInterval // the time that passed since user joined the app
    
}
