//
//  ContentView.swift
//  Simpsons Quotes
//
//  Created by José Javier Cueto Mejía on 12/04/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject  var newQuote = MainService()
    let screenWidth = UIScreen.main.bounds.size.width
    let screenHeight = UIScreen.main.bounds.size.height

    
    var body: some View {
        
        VStack{
            VStack(){
                
                Text("\(newQuote.quoteSimpson.character ?? "Character")")
                    .fontWeight(.medium)
                    .font(.custom("Chalkboard SE", size: 14))
                    .foregroundColor(Color.init("GrayGreenColor"))
                    .padding(.top, 40)
                
                
                Text("\(newQuote.quoteSimpson.quote ?? "Insert Brain Here!! no data load")")
                    
                    .fontWeight(.medium)
                    .font(.custom("Chalkboard SE", size: 18))
                    .foregroundColor(Color.init("GrayGreenColor"))
                    .padding()
                    
                    .lineLimit(nil)
                
                
            } .frame(maxWidth: .infinity, maxHeight: (screenHeight/3) - 70)
               // .background(Color.init("YellowColor"))
            
            //Spacer()
            
            VStack(){
                Image(uiImage: newQuote.data != nil ? UIImage(data:newQuote.data!)! : UIImage())
                    .resizable()
                    .scaledToFit()
            } .frame(maxWidth: .infinity, maxHeight: (screenHeight/3) + 70)
            
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
                        self.newQuote.getWeatherData()
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

