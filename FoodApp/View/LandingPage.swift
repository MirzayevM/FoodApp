//
//  LandingPage.swift
//  FoodApp
//
//  Created by Mirzabek on 23/07/22.
//

import SwiftUI

struct LandingPage: View {
    @Binding var selectedCategory: Category
    var body: some View {
        VStack{
            HStack{
                Button(action: {
                    
                }, label: {
                   Image(systemName: "list.bullet")
                        .font(.title2)
                        .padding(10)
                        .background(.yellow)
                        .foregroundColor(.black)
                        .cornerRadius(8)
                    
                })
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image("profile2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding(10)
                        .background(.yellow)
                        .foregroundColor(.pink)
                        .cornerRadius(8)
                    
                })
                
            }
            .overlay(
                HStack(spacing: 4){
                    
                    Image(systemName: "mappin.and.ellipse")
                        .foregroundColor(.pink)
                    Text("Namangan, microdistrict").fontWeight(.bold)
                        .foregroundColor(.black)
                    
                }
            )
            .padding()
            ScrollView(.vertical, showsIndicators: false, content: {
                VStack(alignment:.leading, spacing:15){
                    
                    //Top View ....
                    
                    HStack(spacing: 20){
                        VStack(alignment: .leading, spacing: 12, content: {
                            (
                                Text("The fastest in Delivery  ")
                                +
                                Text("Food").foregroundColor(.pink)
                            
                            )
                            .font(.title2)
                            .fontWeight(.bold)
                            
                            // Button...
                            Button(action: {}, label: {
                                Text("Order Now")
                                    .font(.footnote)
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                                    .padding(.vertical,10)
                                    .padding(.horizontal)
                                    .background(.pink)
                                    .clipShape(Capsule())
                            })
                            
                        })
                        .padding(.leading)
                        Spacer(minLength: 0)
                            .cornerRadius(27)
                    
                        Image("deliver1")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: getRect().width / 3)
                        
                    }
                    .padding()
                    .background(.yellow)
                    .cornerRadius(15)
                    .padding(.horizontal)
                    
                    // Categories View ....
                    
                    Text("Categories")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding()
                    
                    ScrollView(.horizontal, showsIndicators: false, content: {
                        HStack(spacing: 15){
                            ForEach(categories){ category in
                                HStack(spacing:12){
                                    
                                    Image(category.image)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 18, height: 18)
                                        .padding(6)
                                        .background(selectedCategory.id == category.id ?.white: .white)
                                        .clipShape(Circle())
                                    Text(category.title)
                                        .fontWeight(.bold)
                                        .foregroundColor(selectedCategory.id == category.id ?.white: .black)
                                
                                }
                                .padding(.vertical,12)
                                .padding(.horizontal)
                                .background(selectedCategory.id == category.id ?.pink: .yellow)
                                .clipShape(Capsule())
                                
                                //Shadows......
                                .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
                                
                            
                                
                                .onTapGesture {
                                    withAnimation(.spring()){
                                        selectedCategory = category
                                    }
                                }
                                
                                            }
                        }
                        
                        HStack{
                            Text("Popular Now")
                                .font(.title2)
                                .fontWeight(.bold)
                            
                            Spacer()
                            
                            Button(action: {}, label: {
                                HStack(spacing: 6){
                                    
                                    Text("View All")
                                        .font(.footnote)
                                        .fontWeight(.semibold)
                                        .foregroundColor(.pink)
                                    
                                    Image(systemName:"chevron.right")
                                        .font(.footnote)
                                        .foregroundColor(.white)
                                        .padding(.vertical,4)
                                        .padding(.horizontal,6)
                                        .background(.pink)
                                        .cornerRadius(5)
                                    
                                }
                            })
                            
                        }.padding()
                            .padding(.top,10)
                        
                        ScrollView(.horizontal, showsIndicators: false, content:{
                            HStack(spacing: 25){
                                ForEach(popular_items){ item in
                                    PopularItemView(item: item)
                                    
                                }
                            }
                            .padding()
                            .padding(.leading,10)

                        })
                        
                        .padding(.horizontal)
                        
                        
                    })
                    
                }.padding(.vertical)
            })
            
        }
    }
}

struct LandingPage_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
