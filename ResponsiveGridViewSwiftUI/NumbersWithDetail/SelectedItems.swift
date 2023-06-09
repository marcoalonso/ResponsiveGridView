//
//  SelectedItems.swift
//  ResponsiveGridViewSwiftUI
//
//  Created by Marco Alonso Rodriguez on 09/06/23.
//

import SwiftUI

struct SelectedItems: View {
    
    @State private var selectedItem: Item? = nil
    
    let items: [Item] = [
            Item(title: "Elemento 1", description: "Descripción del elemento 1"),
            Item(title: "Elemento 2", description: "Descripción del elemento 2"),
            Item(title: "Elemento 3", description: "Descripción del elemento 3"),
            Item(title: "1", description: "number 1, lorem ipsum"),
            Item(title: "2", description: "number 2, lorem ipsum"),
            Item(title: "3", description: "number 3, lorem ipsum"),
            Item(title: "4", description: "number 4, lorem ipsum"),
            Item(title: "5", description: "number 5, lorem ipsum"),
            Item(title: "Elemento 5", description: "Descripción del elemento 5"),
            Item(title: "Elemento 6", description: "Descripción del elemento 6"),
            Item(title: "Elemento 7", description: "Descripción del elemento 7"),
            Item(title: "1", description: "number 1"),
            Item(title: "2", description: "number 2"),
            Item(title: "3", description: "number 3"),
            Item(title: "4", description: "number 4"),
            Item(title: "5", description: "number 5"),
        ]
    
    private let numberOfColumns = [
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: numberOfColumns, spacing: 15) {
                    ForEach(items) { item in
                        Button {
                            selectedItem = item
                        } label: {
                            ItemView(item: item)
                        }

                    }
                }
            }
            .padding(12)
            .navigationTitle("Items")
            .sheet(item: $selectedItem) { selectedItem in
                DetailItemView(item: selectedItem)
            }
        }
    }
}

struct SelectedItems_Previews: PreviewProvider {
    static var previews: some View {
        SelectedItems()
    }
}
