//
//  ToDoListItemsView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct ToDoListItemView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    let item: ToDoListItem
    
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(item.title)
                    .font(.body)
                
                Text("\(Date(timeIntervalSince1970: item.dueDate).formatted(date: .abbreviated,time: .shortened))")
                    .font(.footnote)
                    .foregroundColor(Color.gray)
            }
            Spacer()
            
            Button {
                viewModel.toggleIsDone(item: item)
            } label:{
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle" )
            }
        }
    }
}

#Preview {
    ToDoListItemView(item: .init(
        id: "123",
        title: "get milk",
        dueDate: Date().timeIntervalSince1970,
        createdDate: Date().timeIntervalSince1970,
        isDone: false))
}
