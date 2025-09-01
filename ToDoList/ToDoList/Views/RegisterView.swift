//
//  RegisterView.swift
//  ToDoList
//
//  Created by İreemmmm on 9.08.2025.
//

import SwiftUI

struct RegisterView: View {
    var body: some View {
        VStack{
            //header
            HeaderView(title: "Register",
                       subtitle: "Start Your Flow",
                       angle:20,
                       background: .purple)
            Spacer()
        }
    }
}
struct RegisterView_Previews: PreviewProvider {
        static var previews: some View {
            RegisterView()
        }
    }

