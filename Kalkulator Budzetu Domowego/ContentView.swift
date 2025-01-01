//
//  ContentView.swift
//  Kalkulator Budzetu Domowego
//
//  Created by Mikołaj Sobczak on 31/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedTab: Int = 0
    
    var body: some View {
        ZStack{
            
            Color(.green)
            
            TabView(selection: $selectedTab){
                
                MainPage()
                    .tabItem{
                        Label("Strona Domowa", systemImage: "house.circle.fill")
                    }
                    .tag(0)
                    .background(.gray)
                
                
                    
                
            }
            .accentColor(.white)
            
            
        }
    }
}

#Preview {
    ContentView()
}
