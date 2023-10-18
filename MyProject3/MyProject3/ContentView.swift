//
//  ContentView.swift
//  MyProject3
//
//  Created by Joakim Sjöstedt on 2023-10-18.
//

import SwiftUI

struct FruitModel {
    let name: String
    let image: String
}

struct ContentView: View {
    let fruits = [FruitModel(name: "Apelsin", image: "🍊"),
                  FruitModel(name: "Banan", image: "🍌"),
                  FruitModel(name: "Citron", image: "🍋")]

    var body: some View {
        NavigationView {
            List(fruits, id: \.name) { fruit in
                NavigationLink(fruit.name, destination: FruitDetailView(fruit: fruit))
            }
        }
    }
}

struct FruitDetailView: View {
    let fruit: FruitModel
    
    var body: some View {
        Text(fruit.image)
    }
}
