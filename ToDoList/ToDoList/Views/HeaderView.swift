//
//  HeaderView.swift
//  ToDoList
//
//  Created by İreemmmm on 11.08.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        
        
            ZStack{
                RoundedRectangle(cornerRadius: 0).foregroundColor(Color.blue).rotationEffect(Angle(degrees:-25)).offset(y:-40)
                
                VStack{
                    Text("Done Flow").font(.system(size: 55)).foregroundColor(Color.white).bold()
                    Text("Get Things DONE").font(.system(size: 30)).foregroundColor(Color.white)
                }
                .padding(.top,20)
            }
            .frame(width: UIScreen.main.bounds.width * 3, height: 300).offset(y:-100)
    }
    
    
}
struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
