//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import FirebaseCore
import SwiftUI

@main
struct ToDoListApp: App {
    init(){
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
