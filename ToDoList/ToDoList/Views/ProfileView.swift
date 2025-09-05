//
//  ProfileView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct ProfileView: View {
    
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        
            NavigationView {
                VStack {
                    if let user = viewModel.user {
                        profile(user: user)
                    } else {
                        Text("Loading Profile...")
                    }
                }
                .navigationTitle("Profile")
            }
            .onAppear {
                viewModel.fetchUser()
            }
    }
    
    @ViewBuilder
    func profile(user: User) -> some View {
        // Avatar
        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .foregroundColor(Color.blue)
            .frame(width:130,height:130)
            .padding()
        
        //Info: Name,Email,Member since
        VStack(alignment: .leading) {
            HStack {
                Text("Name: ")
                    .bold()
                Text(user.name)
                
            }
            HStack {
                Text("Email: ")
                    .bold()
                Text(user.email)
            }
        
            HStack {
                Text("Member Since: ")
                    .bold()
                Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .shortened))")
                
            }
            
            
        }
        .padding()
       
        //Sign out
        Button("Log Out"){
            
            viewModel.logOut()
        }
        .tint(.red)
        .padding()
        
        Spacer()
        
    }
     
    
    
}

#Preview {
    ProfileView()
}
