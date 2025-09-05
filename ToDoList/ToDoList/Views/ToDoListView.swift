//
//  ToDoListView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//
import SwiftUI
import FirebaseFirestore

struct ToDoListView: View {
    
    @StateObject var viewModel: ToDoListViewViewModel
    @FirestoreQuery var items: [ToDoListItem]
    
    init(userId: String){
      
        // users/<id>/todolistitems/<entries> --> this is the path that database follows. main reason why we need user id
        self._items = FirestoreQuery(collectionPath: "users/\(userId)/todolistitems"
        )
        self._viewModel = StateObject(wrappedValue: ToDoListViewViewModel(userId: userId)
        )
    }
    var body: some View {
        NavigationView {
            VStack {
                List(items) { item in
                    ToDoListItemView(item: item)
                        .swipeActions {
                            Button ("Delete") {
                                // Delete Action
                                viewModel.delete(id: item.id)
                                
                            }
                            .tint(.red)
                            
                        }
                }
                .listStyle(PlainListStyle())
            }
            .navigationTitle("To Do List")
            .toolbar {
                Button {
                    // action
                    viewModel.showingNewItemView = true
                } label:{
                    Image(systemName: "plus")
                }
            }
            .sheet(isPresented: $viewModel.showingNewItemView){
                NewItemView(newItemPresented: $viewModel.showingNewItemView)
            }
        }
    }
}

#Preview {
    ToDoListView(userId: "AewJBC0FOYfmLUxjKuOtiXbZ76Y2")
}
