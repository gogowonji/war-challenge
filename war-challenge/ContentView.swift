//
//  ContentView.swift
//  war-challenge
//
//  Created by 지원 on 2021/07/24.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var playerCard = "card5"
    @State var cpuCard = "card9"
    @State var playerScore = 0
    @State var cpuScore = 0
    
//    @State mean
//    뷰가 접근 가능하도록 해줌
//    it's a piece of data that the view code relies upon to display the UI.
//    1.Change the data
//    2. UI automatically updated

    
    var body: some View {
        
        //safe area (활용 가능한 부분) <-> ignoring area
                
        
        ZStack{
            Image("background").edgesIgnoringSafeArea(.all)
            
            VStack {
                Spacer()
                
                Image("logo")
                
                Spacer()
                
                HStack{
                    Spacer()
                    Image(playerCard)
                    
                    Spacer()

                    Image(cpuCard)
                    
                    Spacer()
                }
                Spacer()
                
                //first Button test!
                Button(action: {
                    //Gernate a random card between 2 and 14
                    let playerRand = Int.random(in: 2...14)
                    let cpuRand = Int.random(in: 2...14)
                    
                    //Update the cards
                    playerCard = "card" + String(playerRand)
                    cpuCard = "card" + String(cpuRand)
                    
                    
                    //Update the scores
                    playerScore += 1
                    cpuScore += 1
                    
                }, label: {
                    Image("dealbutton")
                })
                
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }.padding()
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }.padding()
                    Spacer()
                }.foregroundColor(Color.white)
                
                Spacer()

            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
