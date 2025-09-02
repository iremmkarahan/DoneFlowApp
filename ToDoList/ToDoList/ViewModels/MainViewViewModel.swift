//
//  MainViewViewModel.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import Foundation
import FirebaseAuth


class MainViewViewModel: ObservableObject {
    
    @Published var currentUserId: String = ""
    private var  handler: AuthStateDidChangeListenerHandle?

    // we want to observe from Firebase when the current user changes
    init() {
        self.handler = Auth.auth().addStateDidChangeListener { [weak self] _, user in
            DispatchQueue.main.async{
                self?.currentUserId = user?.uid ?? ""
            }
        }
    }
    
    
    
    // if it equals nil, that means we are not signed in
    public var isSignedIn: Bool {
        return Auth.auth().currentUser != nil
        
    }
}
