//
//  MainPage.swift
//  Kalkulator Budzetu Domowego
//
//  Created by Mikołaj Sobczak on 31/12/2024.
//

import SwiftUI

struct MainPage: View {
    
    @State var percentOfExpenses:[Double] = [0.0, 0.0, 0.0, 0.0]
    
    
    var body: some View {
        ZStack {
            Color("Background")
            VStack{
                
                VStack{
                    
                    // Jedzenie
                    HStack(alignment: .center){
                        Spacer()
                        Image(systemName: "fork.knife")
                            .foregroundStyle(.white)
                        ZStack{
                            ProgressView(value: percentOfExpenses[0], total: 100)
                                .frame(width: 300.0)
                                .scaleEffect(x: 1.0, y: 6)
                                .accentColor(.white)
                            Text( String(percentOfExpenses[0])+"%")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.orange)
                        }
                    }
                    .padding(.trailing, 20)
                    .font(.title)
                    
                    // Transport
                    HStack(alignment: .center){
                        Spacer()
                        Image(systemName: "airplane.departure")
                            .foregroundStyle(.white)
                        ZStack{
                            ProgressView(value: percentOfExpenses[1], total: 100)
                                .frame(width: 300.0)
                                .scaleEffect(x: 1.0, y: 6)
                                .accentColor(.white)
                            Text(String(percentOfExpenses[1])+"%")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.orange)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.trailing, 20)
                    .font(.title)
                    
                    // Zabawa
                    HStack(alignment: .center){
                        Spacer()
                        Image(systemName: "theatermasks.fill")
                            .foregroundStyle(.white)
                        ZStack{
                            ProgressView(value: percentOfExpenses[2], total: 100)
                                .frame(width: 300.0)
                                .scaleEffect(x: 1.0, y: 6)
                                .accentColor(.white)
                            Text(String(percentOfExpenses[2])+"%")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.orange)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.trailing, 20)
                    .font(.title)
                    
                    // rachunki
                    HStack(alignment: .center){
                        Spacer()
                        Image(systemName: "newspaper.fill")
                            .foregroundStyle(.white)
                        ZStack{
                            ProgressView(value: percentOfExpenses[3], total: 100)
                                .frame(width: 300.0)
                                .scaleEffect(x: 1.0, y: 6)
                                .accentColor(.white)
                            Text(String(percentOfExpenses[3])+"%")
                                .font(.title3)
                                .fontWeight(.bold)
                                .foregroundStyle(.orange)
                        }
                    }
                    .padding(.top, 10)
                    .padding(.trailing, 20)
                    .font(.title)
                    
                }
                .padding(.top, 40)
                Spacer()
                
                VStack{
                    Image(systemName: "fork.knife")
                        .foregroundStyle(.white)
                        .scaleEffect(x: 2, y: 2)
//                    Image(systemName: "airplane.departure")
//                    Image(systemName: "theatermasks.fill")
//                    Image(systemName: "newspaper.fill")
                    
                    HStack{
                        Button(" - "){
                            DelValue(id: 0)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                        
                        Button(" + "){
                            AddValue(id: 0)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                    }
                    .padding(.bottom, 20)
                    
                    Image(systemName: "airplane.departure")
                        .foregroundStyle(.white)
                        .scaleEffect(x: 2, y: 2)
//                    Image(systemName: "theatermasks.fill")
//                    Image(systemName: "newspaper.fill")
                    
                    HStack{
                        Button(" - "){
                            DelValue(id: 1)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                        
                        Button(" + "){
                            AddValue(id: 1)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                    }
                    .padding(.bottom, 20)
                    
                    
                    Image(systemName: "theatermasks.fill")
                        .foregroundStyle(.white)
                        .scaleEffect(x: 2, y: 2)
//                    Image(systemName: "newspaper.fill")
                    
                    HStack{
                        Button(" - "){
                            DelValue(id: 2)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                        
                        Button(" + "){
                            AddValue(id: 2)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                    }
                    .padding(.bottom, 20)
                    
                    Image(systemName: "newspaper.fill")
                        .foregroundStyle(.white)
                        .scaleEffect(x: 2, y: 2)
                    
                    HStack{
                        Button(" - "){
                            DelValue(id: 3)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                        
                        
                        Button(" + "){
                            AddValue(id: 3)
                        }
                        .font(.title2)
                        .foregroundStyle(.white)
                    }
                    .padding(.bottom, 20)
                    
                }
                Spacer()
                
                
            }
        }
    }
    
    func AddValue(id: Int){
        if percentOfExpenses[id] < 100.0{
            percentOfExpenses[id] += 5.0
        }
        else{
            percentOfExpenses[id] = 100.0
        
        }
    }
    
    func DelValue(id: Int){
        if percentOfExpenses[id] > 0.0{
            percentOfExpenses[id] -= 5.0
        }
        else{
            percentOfExpenses[id] = 0.0
        }
    }
    
        
}

#Preview {
    MainPage()
}
