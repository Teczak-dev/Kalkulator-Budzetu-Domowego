//
//  MainPage.swift
//  Kalkulator Budzetu Domowego
//
//  Created by Mikołaj Sobczak on 31/12/2024.
//

import SwiftUI

struct MainPage: View {
    @AppStorage("money") private var money : Double = 0.0
    
    @State var percentOfExpenses:[Double] = [0.0, 0.0, 0.0, 0.0]
    @State var percentOfExpensesToProgressView:[Double] = [0.0, 0.0, 0.0, 0.0]
    
    var body: some View {
            ZStack {
                Color("Background")
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                
                    VStack{
                        
                        // Statystyki
                        ZStack{
                            
                            RoundedRectangle(cornerRadius: 40)
                                .fill(Color(.darkGray) )
                                .ignoresSafeArea(.all)
                                .frame(width: 400.0, height: 350.0)
                                
                            VStack{
                                
                                // Jedzenie
                                HStack(alignment: .center){
                                    Spacer()
                                    Image(systemName: "fork.knife")
                                        .foregroundStyle(.white)
                                    ZStack{
                                        ProgressView(value: percentOfExpensesToProgressView[0], total: 100)
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
                                .padding(.top,30)
                                .font(.title)
                                
                                // Transport
                                HStack(alignment: .center){
                                    Spacer()
                                    Image(systemName: "airplane.departure")
                                        .foregroundStyle(.white)
                                    ZStack{
                                        ProgressView(value: percentOfExpensesToProgressView[1], total: 100)
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
                                        ProgressView(value: percentOfExpensesToProgressView[2], total: 100)
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
                                        ProgressView(value: percentOfExpensesToProgressView[3], total: 100)
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
                                
                                Text( String(money) + " PLN" )
                                    .font(.title)
                                    .foregroundStyle(.white)
                                    .padding(.bottom, 10)
                                    .padding(.top, 10)
                                    .fontWeight(.bold)
                            }
                        }
                        Spacer()
                        
                        HStack{
                            Button("Add 10 PLN"){
                                money += 10.0
                            }
                            .padding(20)
                            .background(Color(.gray))
                            .cornerRadius(20)
                            .padding(.top, 50)
                            .padding(.bottom, 50)
                            .foregroundStyle(.white)
                            
                            Button("Remove 10 PLN"){
                                money -= 10.0
                            }
                            .padding(20)
                            .background(Color(.gray))
                            .cornerRadius(20)
                            .padding(.top, 50)
                            .padding(.bottom, 50)
                            .foregroundStyle(.white)
                        }
                        
                        
                        // Last Transactions History
                        ZStack{
                            VStack(alignment: .leading){
                                HStack{
                                    
                                    Rectangle()
                                        .fill(Color(.white))
                                        .frame(width: 10,height: 30)
                                        .padding(.leading, 10)
                                    
                                    Text("Historia")
                                        .font(.title)
                                        .foregroundStyle(.white)
                                }
                                VStack{
                                    ZStack{
                                        RoundedRectangle(cornerRadius: 20)
                                            .fill(Color(.gray))
                                            .frame(width: 400, height: 800)
                                        // elementy historii jeden pod drugim :>
                                        VStack{
                                            // Item
                                            VStack{
                                                HStack{
                                                    Image(systemName: "fork.knife")
                                                    Text("Biedronka")
                                                    
                                                }
                                                .font(.title)
                                                .foregroundStyle(.white)
                                                .frame(width:320,alignment: .leading)
                                                Spacer()
                                                Text("- 214.93 PLN")
                                                    .font(.title2)
                                                    .foregroundStyle(.white)
                                                    .frame(width: 320, alignment: .trailing)
                                                Spacer()
                                            }
                                            .frame(width: 330, height: 100)
                                            .padding(20)
                                            .background(Color(.darkGray))
                                            .cornerRadius(20)
                                            .padding(.top, 20)
                                            
                                            
                                            // Item
                                            VStack{
                                                HStack{
                                                    Image(systemName: "fork.knife")
                                                    Text("Biedronka")
                                                    
                                                }
                                                .font(.title)
                                                .foregroundStyle(.white)
                                                .frame(width:320,alignment: .leading)
                                                Spacer()
                                                Text("- 214.93 PLN")
                                                    .font(.title2)
                                                    .foregroundStyle(.white)
                                                    .frame(width: 320, alignment: .trailing)
                                                Spacer()
                                            }
                                            .frame(width: 330, height: 100)
                                            .padding(20)
                                            .background(Color(.darkGray))
                                            .cornerRadius(20)
                                            .padding(.top, 20)
                                            
                                            // Item
                                            VStack{
                                                HStack{
                                                    Image(systemName: "fork.knife")
                                                    Text("Biedronka")
                                                        
                                                }
                                                    .font(.title)
                                                    .foregroundStyle(.white)
                                                    .frame(width:320,alignment: .leading)
                                                Spacer()
                                                Text("- 214.93 PLN")
                                                    .font(.title2)
                                                    .foregroundStyle(.white)
                                                    .frame(width: 320, alignment: .trailing)
                                                Spacer()
                                            }
                                            .frame(width: 330, height: 100)
                                            .padding(20)
                                            .background(Color(.darkGray))
                                            .cornerRadius(20)
                                            .padding(.top, 20)
                                            
                                            // Item
                                            VStack{
                                                HStack{
                                                    Image(systemName: "fork.knife")
                                                    Text("Biedronka")
                                                        
                                                }
                                                    .font(.title)
                                                    .foregroundStyle(.white)
                                                    .frame(width:320,alignment: .leading)
                                                Spacer()
                                                Text("- 214.93 PLN")
                                                    .font(.title2)
                                                    .foregroundStyle(.white)
                                                    .frame(width: 320, alignment: .trailing)
                                                Spacer()
                                            }
                                            .frame(width: 330, height: 100)
                                            .padding(20)
                                            .background(Color(.darkGray))
                                            .cornerRadius(20)
                                            .padding(.top, 20)
                                            
                                        }
                                    }
                                }
                                
                            }
                        }
                        .padding(.top, 30)
                        
                        
                        
                    }
            }.ignoresSafeArea(.all)
        }
    }
        
    
    func AddValue(id: Int){
        money -= 10.5
        if percentOfExpenses[id] < 100.0{
            percentOfExpensesToProgressView[id] += 5.0
        }
        else{
            percentOfExpensesToProgressView[id] = 100.0
        }
        percentOfExpenses[id] += 5.0
        
    }
    
    func DelValue(id: Int){
        if percentOfExpenses[id] > 0.0 && percentOfExpenses[id] <= 100.0{
            percentOfExpenses[id] -= 5.0
            percentOfExpensesToProgressView[id] -= 5.0
        }
        else if percentOfExpenses[id] > 100.0{
            percentOfExpenses[id] -= 5.0
        }
        else{
            percentOfExpenses[id] = 0.0
            percentOfExpensesToProgressView[id] = 0.0
        }
    }
    
        
}

#Preview {
    MainPage()
}
