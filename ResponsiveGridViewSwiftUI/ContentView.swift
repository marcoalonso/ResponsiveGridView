//
//  ContentView.swift
//  ResponsiveGridViewSwiftUI
//
//  Created by Marco Alonso Rodriguez on 09/06/23.
//

import SwiftUI

struct ContentView: View {
    private var data : [Int] = Array(1...700)
    private let colors: [Color] = [.red, .gray, .green, .yellow, .blue, .pink, .brown]
    
    //Option 1,
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: 150))
    ]
    
    //Option 2
    private let numberOfColumns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    //Option 3
    private let fixedColumns = [
        GridItem(.fixed(200)),
        GridItem(.fixed(100)),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: fixedColumns, spacing: 15) {
                    ForEach(data, id: \.self) { number in
                        ZStack {
                            Rectangle()
                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .frame(width: 150, height: 150)
                                .foregroundColor(colors[number%7])
                                .cornerRadius(25)
                            
                            Text("\(number)")
                                .font(.system(size: 80, weight: .medium, design: .rounded))
                                .foregroundColor(.white)
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Grid Example")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
