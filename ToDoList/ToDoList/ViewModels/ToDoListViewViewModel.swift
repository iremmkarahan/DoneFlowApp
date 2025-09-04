//
//  ToDoListViewViewModel.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import Foundation
import FirebaseFirestore

// view model for list of items view
// primary tab
class ToDoListViewViewModel: ObservableObject {
    
    @Published var showingNewItemView = false
    
    init(){
        
        
    }
    func delete(id: String) {
        let database = Firestore.firestore()
        
        database.collection("users")
            .document("user_id")
            .collection("todolistitems")
            .document(id)
            .delete()
    }
}

