//
//  TLButton.swift
//  ToDoList
//
//  Created by İreemmmm on 1.09.2025.
//

import SwiftUI

struct TLButton: View {
    
    let title: String
    let background: Color
    // takes no argument and return void
    let action: () -> Void
    
    
    var body: some View {
        Button{
            //Action
            action()
            
        } label:{
            ZStack{
                RoundedRectangle(cornerRadius: 10).foregroundStyle(background)
                
                Text(title).foregroundColor(Color.white).bold()
            }
        }
       
    }
    }

struct TLButton_Previews: PreviewProvider {
    // these are dummy data
    static var previews: some View {
        TLButton(title: "Value",background: .pink) {
            // Action
        }
        
    }
}
