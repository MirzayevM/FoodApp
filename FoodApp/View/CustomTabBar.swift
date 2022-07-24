//
//  CustomTabBar.swift
//  FoodApp
//
//  Created by Mirzabek on 23/07/22.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedTab : String
    
    // Animation NameSpace for sliding efect...
    @Namespace var animation
    var body: some View {
        HStack(spacing:0){
            //TabBar Button...
            TabBarButton(animation: animation, image: "home", selectedTab: $selectedTab)
            TabBarButton(animation: animation, image: "heart", selectedTab: $selectedTab)
            Button(action: {}, label: {
                Image("search")
                    .resizable()
                    .renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 24, height: 24)
                    .font(.title2)
                    .foregroundColor(.white)
                    .padding(20)
                    .background(.pink)
                   .clipShape(Circle())
                //shadows
                    .shadow(color: .black.opacity(0.05), radius: 5, x: 5, y: 5)
                    .shadow(color: .black.opacity(0.05), radius: 5, x: -5, y: -5)
                
                
            })
            .offset(y: -30)
            
            TabBarButton(animation: animation, image: "bell", selectedTab: $selectedTab)
            TabBarButton(animation: animation, image: "cart", selectedTab: $selectedTab)
            
        }
        .padding(.top)
        //decreasing the extra padding added...
        .padding(.vertical,-10)
        .padding(.bottom, getSafeArea().bottom == 0 ? 15 : getSafeArea() .bottom)
        .background(.white)
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
// extending view to get area...
extension View{
    func getSafeArea() -> UIEdgeInsets{
        return UIApplication.shared.windows.first?.safeAreaInsets ?? UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    }


struct TabBarButton: View{
    var animation : Namespace.ID
    var image : String
    @Binding var selectedTab: String
    
    var body: some View{
        Button(action: {
            withAnimation(.spring()){
                selectedTab = image
            }
        }, label: {
            VStack(spacing:8){
                
                Image(image)
                    .resizable()
                //since it is asset image....
                    .renderingMode(.template)
                
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 28, height: 28)
                   .foregroundColor(selectedTab  == image ? Color.pink: Color.gray)
                
                
                if selectedTab == image{
                    Circle()
                        .fill(Color.pink)
                        // Sliding Effect
                        .matchedGeometryEffect(id:"TAB" , in: animation)
                        .frame(width: 8, height:8 )
                }
            }
            .frame(maxWidth: .infinity)
            
            
        })
    }
    
    
}
