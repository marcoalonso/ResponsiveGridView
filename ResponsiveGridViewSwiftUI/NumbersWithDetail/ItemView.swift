//
//  ItemView.swift
//  ResponsiveGridViewSwiftUI
//
//  Created by Marco Alonso Rodriguez on 09/06/23.
//

import SwiftUI

struct ItemView: View {
    let item: Item
    
    var body: some View {
        ZStack {
            VStack(alignment: .center) {
                Text(item.title)
                    .font(.title)
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(10)
                
                Text(item.description)
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding()
                    .cornerRadius(10)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
        .foregroundColor(.gray)
        .cornerRadius(15)
        
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item(title: "1", description: "Number one"))
    }
}
