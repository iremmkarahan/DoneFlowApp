//
//  ContentView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    
    
    var body: some View {
        if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
            // signed in
            ToDoListView()
        }
        else{
            LoginView()
        }
    }
}


