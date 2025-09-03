//
//  NewItemView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct NewItemView: View {
    
    @StateObject var viewModel = NewItemViewViewModel()
    @Binding var newItemPresented: Bool
    
    
    var body: some View {
        VStack {
            Text("New List Item")
                .font(.system(size:32))
                .bold()
                .padding(.top, 50)
            
            Form {
                //Title
                 TextField("Title", text: $viewModel.title)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                //Due Date
                DatePicker("Due Date", selection: $viewModel.dueDate)
                    .datePickerStyle(GraphicalDatePickerStyle())
                
                //Button
                TLButton(title: "Save",
                         background: .green)
                {
                    if viewModel.canSave{
                        viewModel.save()
                        newItemPresented = false
                    } else {
                        viewModel.showAlert = true
                    }
        
                }
                         .padding()
            }
            .alert(isPresented: $viewModel.showAlert){
                Alert(title: Text("Oops!"),message: Text("All fields are required, and the due date must be today or in the future"))
            }
        }
    }
}

#Preview {
    NewItemView(newItemPresented: Binding(get:{
        return true
    },set: {_ in 
        
    }))
}
