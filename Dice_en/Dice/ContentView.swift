//
//  ContentView.swift
//  Dice
//
//  Created by iambjlu on 2021/4/12.
//  Open source project on github.com/iambjlu
//

import SwiftUI
let number=0

//User Interface
struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        
        VStack {
            Text("Welcome to Dice")
                .font(.title).fontWeight(.medium).padding()
            
            Button("Roll the Dice"){
                showingAlert = true
            }.alert(isPresented: $showingAlert){
                Alert(title: Text("Dice Result"), message: Text("The number is \(Int.random(in: 1...6)) !!"))
        }
        
    }
}

//Live Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice("iPhone 12 Pro")
    }
}
}
