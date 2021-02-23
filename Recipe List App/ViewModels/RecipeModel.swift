//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by Shane Simpson on 1/30/21.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published var recipes = [Recipe]()
    
    init(){
        // Create an instance of data service and get the data
        self.recipes = DataService.getLocalData()
    }
}
