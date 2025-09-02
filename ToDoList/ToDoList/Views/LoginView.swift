//
//  LoginView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct LoginView: View {
    
   @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        NavigationView{
            
            VStack{
                //header
                HeaderView(title: "Done Flow",subtitle: "Flow Through Your Goals",
                           angle: -20,
                           background: .pink)
                
              
                //Login Form
                Form{
                    
                    if !viewModel.errorMessage.isEmpty {
                        Text(viewModel.errorMessage)
                            .foregroundColor(Color.red)
                    }
                    
    
                    TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle()).autocapitalization(.none)
                    
                    SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(title: "LOG IN",
                             background: .blue,)
                    {
                        // Attempt to log in
                        viewModel.login()
                        
                    }
                    .padding()
                }
                    .offset(y:-50)
                    
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

    
