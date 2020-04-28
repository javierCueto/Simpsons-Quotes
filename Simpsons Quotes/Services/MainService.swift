//
//  MainServices.swift
//  Simpsons Quotes
//
//  Created by José Javier Cueto Mejía on 12/04/20.
//  Copyright © 2020 Pozolx. All rights reserved.
//

import Foundation


class MainService:ObservableObject{
    let simpsonURL = "https://thesimpsonsquoteapi.glitch.me/quotes"
    
    @Published var quoteSimpson = SimpsonQuote()
    @Published var data:Data?
    
    init(){
        getWeatherData()
    }
    
    func getWeatherData() {
        
        
        guard let url = URL(string:simpsonURL) else{
            return
        }
        
        
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            
            guard let data = data, error == nil else {
                return
            }
            
            let quote = try? JSONDecoder().decode([SimpsonQuote].self, from: data)
            
            
            if let safeQuote = quote{
                DispatchQueue.main.async {
                    
                    
                    self.imageSimpson(safeQuote: safeQuote[0])
                }
                
            }else {
                print("error al  convertir array a simple object")
            }
            
            
        }.resume()
        
        
        
        
        
        
    }
    
    func imageSimpson(safeQuote:SimpsonQuote) {
        guard let url = URL(string: safeQuote.image!) else { return }
        let task = URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            DispatchQueue.main.async {
                self.quoteSimpson.character = safeQuote.character
                self.quoteSimpson.image = safeQuote.image
                self.quoteSimpson.quote = safeQuote.quote
                self.data = data
                
                print(safeQuote.character!)
            }
        }
        task.resume()
    }
}
