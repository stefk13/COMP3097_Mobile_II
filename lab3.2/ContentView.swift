//
//  ContentView.swift
//  lab3.2
//
//  Created by Tech on 2024-01-23.
//

import SwiftUI

struct ContentView: View {
    @State var counter:Int = 0
    var body: some View {
        VStack {
            Text("\(counter)")
                .font(.title)
                .fontWeight(.bold)
            Button(action:
                    {counter+=1},
                    label:
                    {Text("Add")})
            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.334, saturation: 0.255, brightness: 0.94)/*@END_MENU_TOKEN@*/)
            
            Button(action:
                    {counter=0},
                    label:
                    {Text("Reset")})
            .frame(width: /*@START_MENU_TOKEN@*/300.0/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100.0/*@END_MENU_TOKEN@*/)
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 1.0, saturation: 0.357, brightness: 0.892)/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
