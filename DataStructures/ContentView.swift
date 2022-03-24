//
//  ContentView2.swift
//  DataStructures
//
//  Created by Sibson, Harry (AGDF) on 24/03/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                NavigationLink(destination: StackView()) {
                    Text("Stack")
                }
                Spacer()
                NavigationLink(destination: QueueView()) {
                    Text("Queue")
                }
                Spacer()
                
            }
        }
        
    }
}

struct ContentView2_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
