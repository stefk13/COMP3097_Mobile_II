//
//  ContentView.swift
//  4.2
//
//  Created by Tech on 2024-01-30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination:
                                {FirstView(message: "This is message", handler: {print($0)})}, label: {Text("First Screen")})
                NavigationLink(destination: {Text("Second")}, label: {Text("Second Screen")})
                
            }
        }
    }
}

struct FirstView:View{
    var message:String
    var handler:(String)->Void
    
    var body: some View{
        VStack{
            Text("This is the first view too")
            Text(message)
            Button(action: {handler("Handler Exectued")}, label: {Text("Call handler")})
            NavigationLink(destination: {Text("Third")}, label: {Text("Third Screen")})
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
