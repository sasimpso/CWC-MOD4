//
//  DataService.swift
//  Recipe List App
//
//  Created by Shane Simpson on 1/30/21.
//

import Foundation

class DataService {
    
    static func getLocalData() -> [Recipe] {
        
        // Parse local json file
        
        // Get a url path to the json file
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        // Create a url object
        guard pathString != nil else {
            return [Recipe]()
        }
        
        // Create a data object
        let url = URL(fileURLWithPath: pathString!)
        
        
        do {
            
            // Get the data object
            let data = try Data(contentsOf: url)
            
            // Decode the data with a JSON decoder
            let decoder = JSONDecoder()
            
            do {
                
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                // Add the unique IDs
                for r in recipeData {
                    r.id = UUID()
                }
                
                return recipeData
                
            } catch {
                
                // error with decoding data
                print("error decoding data")
            }
            
            
            
        } catch  {
            // error with getting data
            print("Error getting data from json")
        }
        
        
        
        // Return the recipes
        return [Recipe]()
    }
    
}
