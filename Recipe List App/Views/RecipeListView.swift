//
//  ContentView.swift
//  Recipe List App
//
//  Created by Shane Simpson on 1/29/21.
//

import SwiftUI

struct RecipeListView: View {
    
    // Reference the view model
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(destination: RecipeDetailView(recipe: r)) {
                    
                    HStack(spacing: 20.0){
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50,height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(/*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/)
                        
                        Text(r.name)
                    }
                }
            }.navigationBarTitle("All Recipes")
        }
    }
}

struct RecipeListView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}
