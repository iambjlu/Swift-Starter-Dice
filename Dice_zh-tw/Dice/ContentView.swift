//
//  ContentView.swift
//  Dice
//
//  Created by 盧柏均@WMSLAB on 2021/4/12.
//

import SwiftUI
let number=0

//User Interface
struct ContentView: View {
    @State private var showingAlert = false
    var body: some View {
        
        VStack {
            Text("歡迎使用骰子")
                .font(.title).fontWeight(.medium).padding()
            
            Button("丟骰子"){
                showingAlert = true
            }.alert(isPresented: $showingAlert){
                Alert(title: Text("骰子結果"), message: Text("數字是 \(Int.random(in: 1...6)) !!"))
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
