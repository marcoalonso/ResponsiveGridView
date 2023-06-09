//
//  DetailItemView.swift
//  ResponsiveGridViewSwiftUI
//
//  Created by Marco Alonso Rodriguez on 09/06/23.
//

import SwiftUI

struct DetailItemView: View {
    let item: Item
    
    var body: some View {
        VStack {
            Text(item.title)
                .font(.title)
                .padding()
            
            Text(item.description)
                .padding()
            
            Image(systemName: "rectangle.center.inset.filled.badge.plus")
                .resizable()
                .frame(width: 200, height: 100)
            
            Spacer()
        }
        .foregroundColor(.white)
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(
            LinearGradient(gradient: Gradient(colors: [Color.black, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
        )
        .navigationTitle("Detalle")
    }
}

struct DetailItemView_Previews: PreviewProvider {
    static var previews: some View {
        DetailItemView(item: Item(title: "1", description: "Description of number one. "))
    }
}
