//
//  LoginView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct LoginView: View {
    
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView{
            
            VStack{
                //header
                HeaderView()
                
                //Login Form
                Form{
                    TextField("Email Address", text: $email).textFieldStyle(DefaultTextFieldStyle())
                    
                    SecureField("Password", text: $password).textFieldStyle(DefaultTextFieldStyle())
                    
                    Button{
                        // attempt log in
                    } label:{
                        ZStack{
                            RoundedRectangle(cornerRadius: 10).foregroundStyle(Color.orange)
                            
                            Text("Log In").foregroundColor(Color.white).bold()
                        }
                    }
                }
                
                //Create Account
                VStack{
                    Text("First time here?")
                    
                    NavigationLink("Create An Account", destination: RegisterView())
                  
                }
                .padding(.bottom,50)
                Spacer()
            }
        }
    }
}
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
