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
                    
                }
                .navigationTitle("Profile")
            }
    }
}

#Preview {
    ProfileView()
}
