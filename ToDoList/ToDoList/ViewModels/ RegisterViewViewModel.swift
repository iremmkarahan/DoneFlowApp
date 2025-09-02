//
//  RegisterViewViewModel.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//
import FirebaseFirestore
import FirebaseAuth
import Foundation

class RegisterViewViewModel: ObservableObject {
    @Published var name = ""
    @Published var email = ""
    @Published var password = ""
    
    init() {}
    
    private func validate() -> Bool{
        guard !name.trimmingCharacters(in: .whitespaces).isEmpty && !email.trimmingCharacters(in: .whitespaces).isEmpty && !password.trimmingCharacters(in: .whitespaces).isEmpty else {
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            return false
        }
        guard password.count >= 6 else {
            return false
        }
        
        return true
    }
    
    func register(){
        
        guard validate() else {
            return
        }
        Auth.auth().createUser(withEmail: email, password: password) { [weak self] result, error in
            guard let userId = result?.user.uid else {
                return
            }
            self?.insertUserRecord(id: userId)
        }
    }
    
    // creating data object for database
    private func insertUserRecord(id: String){
        let newUser = User(id: id,
                           name: name,
                           email: email,
                           joined: Date().timeIntervalSince1970)
        
        
        let database = Firestore.firestore()
        
        database.collection("users")
            .document(id)
            .setData(newUser.asDictionary())
        
    }
   
    
}
