//
//  Home.swift
//  FoodApp
//
//  Created by Mirzabek on 23/07/22.
//

import SwiftUI


struct Home: View {
    // Hiding Tab Bar
    init(){
        UITabBar.appearance().isHidden = true
    }
    
    // selected Category
    @State var selectedCategory : Category = categories.first!
    @State var slectedTab: String = "home"
    
    
    var body: some View {
        //Tab View....
        VStack(spacing:0) {
            
            TabView{
                
                LandingPage(selectedCategory: $selectedCategory)
                    .tag("house")
                Color.pink
                    .tag("heart")
                
                Color.yellow
                    .tag("bell")
                
                Color.red
                    .tag("cart.badge.plus")
            }
            
            //Custom Tab Bar....
            CustomTabBar(selectedTab: $slectedTab)
            
        }
        .ignoresSafeArea()
       
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}

extension View{
    func getRect() -> CGRect{
        return UIScreen.main.bounds
    }
}
