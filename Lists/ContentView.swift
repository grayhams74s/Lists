//
//  ContentView.swift
//  Lists
//
//  Created by felix angcot jr on 2/5/26.
//

import SwiftUI

struct ContentView: View {
    
    @State private var shoppingItems: [ShoppingModel] = [
        ShoppingModel(title: "Apple", price: "$1.00"),
        ShoppingModel(title: "Bread", price: "$2.00"),
        ShoppingModel(title: "Cereal", price: "$10.00"),
        ShoppingModel(title: "Ice Cream", price: "$4.00")
    ]
    
    var body: some View {
        VStack {
            List(shoppingItems){ shoppingItem in
                HStack {
                    Text(shoppingItem.title)
                        .padding()
                    Spacer()
                    Text(shoppingItem.price)
                        .padding()
                        .foregroundStyle(.green)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
