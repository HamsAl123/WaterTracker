//
//  ContentView.swift
//  WaterTracker
//
//  Created by Hams Alzahrani on 20/03/1445 AH.
//

import SwiftUI

struct ContentView: View {
    @State private var IsOff = true
    @State private var cups = 0
    let appTitle="Water Tracker 💦"
    var body: some View {
        VStack {
            Text(appTitle).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .multilineTextAlignment(.center)
                .bold(true)
                
                
            Toggle(isOn: $IsOff) {
                Text("Apple Health")
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
            Stepper(value: $cups, in: 0...20) {
                Text("Cups to drink per day \(cups)")

            }
            .padding(.all)
            Button("Continue") {
                /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
