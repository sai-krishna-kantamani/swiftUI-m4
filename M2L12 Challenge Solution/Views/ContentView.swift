//
//  ContentView.swift
//  M2L12 Challenge Solution
//
//  Created by Christopher Ching on 2021-01-19.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var model = PizzaModel()
    
    var body: some View {
        
        ScrollView {
            VStack(alignment: .leading) {
                ForEach (model.pizzas) { pizza in
                    
                    HStack {
                        Image(pizza.image)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 60, height: 60)
                            .cornerRadius(5)
                            .clipped()
                            
                        
                        VStack(alignment: .leading) {
                            Text(pizza.name)
                                .font(.headline)
                            HStack {
                                // Use ForEach for the toppings
                                ForEach (pizza.toppings, id: \.self) { topping in
                                    Text(topping)
                                }
                            }
                            .font(.caption)
                        }
                    }
                    
                }
            }
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
