//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by Shane Simpson on 1/30/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                
                // MARK: Recipe Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                
                // MARK: Ingredients
                VStack(alignment: .leading){
                    Text("Ingredients")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach (recipe.ingredients, id: \.self) { item in
                        
                        Text("‣ " + item)
                    }
                }
                .padding([.top, .leading, .trailing])
                
                // MARK: Directions
                VStack(alignment: .leading, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                        
                  Text("Directions")
                    .font(.headline)
                    .padding(.vertical, 5)
                    
                    ForEach(0..<recipe.directions.count, id: \.self) { index in
                        
                        Text(String(index+1) + ". " + recipe.directions[index])
                        
                    }
                    
                }).padding([.top, .leading, .trailing])
                
            }
            
        }.navigationBarTitle(recipe.name)

    }
}

struct RecipeDetailView_Previews: PreviewProvider {

    static var previews: some View {
        let model = RecipeModel()
        RecipeDetailView(recipe: model.recipes[0])
    }
}
