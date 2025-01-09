//
//  ContentView.swift
//  Kalkulator Budzetu Domowego
//
//  Created by Mikołaj Sobczak on 31/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Int = 0
    @AppStorage("money") private var money: Double = 0.0
    
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor.toolbarcolor
        UITabBar.appearance().tintColor = UIColor.white
        UITabBar.appearance().unselectedItemTintColor = UIColor.gray
        
        
    }
    
    var body: some View {
        
        ZStack{
            
            Color("Background")
                .ignoresSafeArea()
            TabView(selection: $selectedTab){
                
                
                MainPage()
                    .tabItem{
                        Label("Strona Domowa", systemImage: "house.circle.fill")
                    }
                    .tag(0)
                History()
                    .tabItem {
                        Label("Historia", systemImage: "book.pages.fill")
                    }
                    .tag(1)
                    
                
            }
            .accentColor(.white)
            
            
            
        }
    }
    
    
    
}

#Preview {
    ContentView()
}
