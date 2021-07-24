//
//  ContentView.swift
//  war-challenge
//
//  Created by 지원 on 2021/07/24.
//

import SwiftUI

struct ContentView: View {
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
                    Image("card3")
                    
                    Spacer()

                    Image("card4")
                    
                    Spacer()
                }
                Spacer()
                
                Image("dealbutton")
                
                Spacer()
                
                HStack{
                    Spacer()
                    VStack{
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
                            .font(.largeTitle)
                    }.padding()
                    Spacer()
                    VStack{
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text("0")
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
