//
//  ContentView.swift
//  SwiftUI CounterApp
//
//  Created by Aashiq on 24/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State var counter = 0
    
    fileprivate func makeCountText() -> Text {
        return Text("\(counter)")
            .font(Font.system(size: 68))
    }
    
    fileprivate func makeResetButton() -> some View {
        return Button(action: {  self.counter = 0}, label: {
            Text("Reset").foregroundColor(.white)
                .bold()
        }).frame(width: 150, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.red)
        .cornerRadius(8)
    }
    
    fileprivate func makeCountButton() -> some View {
        return Button(action: {
            self.counter += 1
        }, label: {
            Text("Click Me").foregroundColor(.white)
                .bold()
        }).frame(width: 150, height: 50, alignment: .center)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke())
        .background(Color.blue)
        .cornerRadius(8)
    }
    
    var body: some View {
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing:100){
            
            makeCountText()
            
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 60){
                makeResetButton()
                
                makeCountButton()
            }
            
      
            
        }
        
    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
