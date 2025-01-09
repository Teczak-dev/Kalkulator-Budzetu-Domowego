//
//  History.swift
//  Kalkulator Budzetu Domowego
//
//  Created by Mikołaj Sobczak on 01/01/2025.
//

import SwiftUI

struct History: View {
    var body: some View {
        
        ZStack{
            Color("Background")
                .ignoresSafeArea(.all)
            
            VStack{
                ScrollView{
                
                    // Historia i dwa przyciski
                    HStack{
                        
                        Button(action: {
                            print("test")
                        }){
                            Image(systemName: "wrench.adjustable.fill")
                                .foregroundStyle(.white)
                        }
                        .padding(.leading, 20)
                        Spacer()
                        
                        Text("Historia")
                            .fontWeight(.bold)
                            .foregroundStyle(.white)
                        
                        Spacer()
                        Button(action: {
                                print("test")
                        }){
                            Image(systemName: "dots.and.line.vertical.and.cursorarrow.rectangle")
                                .foregroundStyle(.white)
                        }
                        .padding(.trailing, 20)
                    }
                    .font(.system(size: 40))
                    
                    Spacer()
                        
                    // historia transakcji
                    VStack{
                        ZStack{
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color(.gray))
                                .frame(width: 400, height: 800)
                            Text("Biedronka")
                                .foregroundStyle(.white)
                                .font(.system(size: 30))
                        }
                    }
                }
                
            }
            
            
        }
        
    }
}

#Preview {
    History()
}
