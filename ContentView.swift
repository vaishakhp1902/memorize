//
//  ContentView.swift
//  Memorize
//
//  Created by Vaishakh Poduval on 05/02/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        return HStack {
            ForEach(0..<4){index in
                cardView(isfaceup: false)
                .font(Font.largeTitle)
                .padding()
                .foregroundColor(Color.orange)
            }
        }

    }
    
    
    struct cardView: View {
        var isfaceup: Bool
        var body: some View {
            
            ZStack{
                if(isfaceup){
                    RoundedRectangle(cornerRadius:10.0).stroke(lineWidth: 3.0)
                    RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                    Text("👻")
                    
                }
                else{
                    RoundedRectangle(cornerRadius: 10.0).fill()
                }
               
           }
        }
    }


    
    
    
    
    
    
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
    
    
}


