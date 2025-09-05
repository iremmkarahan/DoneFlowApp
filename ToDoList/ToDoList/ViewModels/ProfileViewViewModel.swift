//
//  ProfileViewViewModel.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class ProfileViewViewModel: ObservableObject {
    init() {}
    
    
    func toggleIsDone(item: ToDoListItem) {
        var itemCopy = item // we cannot use item directly because it is immutable,we are using its copy
        itemCopy.setDone(!item.isDone) // if the item is done,new item is setting as not done
        
        guard let uid = Auth.auth().currentUser?.uid else {
            return
        }
        let database = Firestore.firestore()
        database.collection("users")
            .document(uid)
            .collection("todolistitems")
            .document(itemCopy.id)
            .setData(itemCopy.asDictionary())
    }
}
