//
//  RecipeTabView.swift
//  Recipe List App
//
//  Created by Shane Simpson on 2/27/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView() {
            Text("Featured View").tabItem {
                VStack{
                    Image(systemName: "star.fill")
                    Text("Featured")
                }
            }.tag(1)
            
            RecipeListView()
                .tabItem {
                    VStack{
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }.tag(2)
        }
        
    }
}

struct RecipeTabView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
