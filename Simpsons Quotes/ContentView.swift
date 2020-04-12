//
//  ContentView.swift
//  Simpsons Quotes
//
//  Created by José Javier Cueto Mejía on 12/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height
    
    var body: some View {
        
        VStack{
            VStack(){
                Text("Insert Brain Here!!")
                    .fontWeight(.medium)
                    .font(.custom("Chalkboard SE", size: 30))
                    .foregroundColor(Color.init("GrayGreenColor"))
            } .frame(maxWidth: .infinity, maxHeight: (screenHeight/3) - 100)
            
            //Spacer()
            
            VStack(){
                    Image("mainHomer")
                     .resizable()
                     .scaledToFit()
            } .frame(maxWidth: .infinity, maxHeight: (screenHeight/3) + 100)
            
            //Spacer()
            
            ZStack(){
                VStack(){
                    Spacer()
                    Rectangle()
                        .fill(Color.init("BlueColor"))
                        .frame(maxWidth: .infinity, maxHeight: (screenHeight/3)/2)
                    
                }
                
                
                
                ZStack{
                    Button(action: {
                        
                    }){
                        VStack(){
                            Image(systemName: "quote.bubble.fill")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 100, height: 100)
                                .foregroundColor(.white)
                            
                            
                        } .frame(width: (screenHeight/3)/1.5, height: (screenHeight/3)/1.5)
                        
                    }.foregroundColor(.black)
                        .background(Color.init("YellowColor"))
                        .clipShape(Circle())
                        .shadow(color: Color.init("GrayGreenColorT"), radius: 7)
                }
                
                
                
                
            } .frame(maxWidth: .infinity, maxHeight: screenHeight/3)
            
            
        }.edgesIgnoringSafeArea(.all)
            .background(Color.init("WhiteColor"))
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}

