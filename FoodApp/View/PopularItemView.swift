//
//  PopularItemView.swift
//  FoodApp
//
//  Created by Mirzabek on 23/07/22.
//

import SwiftUI

struct PopularItemView: View {
    var item: Popular
    var body: some View {
        VStack(spacing: 8){
            
            Image(systemName:"heart")
                .font(.footnote)
                .foregroundColor(.pink)
                .padding(8)
                .background(.yellow)
                .clipShape(Circle())
            // Setting to right...
                .frame(maxWidth:.infinity, alignment: .trailing)
                .padding(-10)
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: getRect().width / 3)
                .padding(.top,20)
            Text(item.title)
                .fontWeight(.bold)
            
            Text(item.description)
                .font(.footnote)
                .foregroundColor(.gray)
            (
            Text("$ ")
                .font(.footnote)
                .foregroundColor(.pink)
            +
            Text(item.price)
                .font(.title2)
                .foregroundColor(.black)
            
            ).fontWeight(.bold)
                .padding(.top, 8)
        }
        .padding(.horizontal,30)
        .padding(.vertical)
        .background(.white)
        .cornerRadius(25)
        //Shadowa
        .shadow(color: Color.black, radius: 5, x:5, y:5)
        
    }
}

struct PopularItemView_Previews: PreviewProvider {
    static var previews: some View {
       ContentView()
    }
}
