//
//  RegisterView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct RegisterView: View {
    
    @State var name = ""
    @State var email = ""
    @State var password = ""

    var body: some View {
        VStack{
            //header
            HeaderView(title: "Register",
                       subtitle: "Start Your Flow",
                       angle:20,
                       background: .purple)
            Form{
                TextField("Full Name", text: $name).textFieldStyle(DefaultTextFieldStyle()).autocorrectionDisabled()
                
                TextField("Email Adress", text: $email).textFieldStyle(DefaultTextFieldStyle()).autocorrectionDisabled().autocapitalization(.none)
                
                SecureField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account",
                         background: .green,)
                {
                    // Attempt registration
                    
                
               
                }
                .padding()
            }
            .offset(y:-50)
            Spacer()
        }
    }

struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }
}
