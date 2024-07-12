//
//  ContentView.swift
//  interactiveUI
//
//  Created by Rakshana Devalla on 7/12/24.
//

import SwiftUI

struct ContentView: View {
    @State private var textTitle = "What is your name?"
    @State private var name = ""
    
    var body: some View {
        VStack{
            Text(textTitle)
            TextField("Enter here", text: $name)
                .multilineTextAlignment(.center)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
                .border(Color.orange,width: 1)
            
            Button("Submit Name"){
                textTitle = "Welcome \(name)"
            }
            .padding(5)
            .background(Color.yellow)
            .border(Color.orange,width: 3)
            .padding()
        }
        .padding()
    }

}

#Preview {
    ContentView()
}
