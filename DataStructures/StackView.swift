//
//  ContentView.swift
//  DataStructures
//
//  Created by Sibson, Harry (AGDF) on 03/03/2022.
//

import SwiftUI


struct StackView: View {
    @ObservedObject private var stack = Stack()
    @State public var startingStack = ["1","2","3","4"]
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button("Push",action:{
                    startingStack = stack.push(stack: startingStack, item: "\(1+startingStack.count)")
                }).disabled(stack.isFull(stack: startingStack))
                Spacer()
                Button("Pop",action: {
                    startingStack = stack.pop(stack: startingStack)
                }).disabled(stack.isEmpty(stack: startingStack))
                Spacer()
            }
            List {
                ForEach(startingStack.reversed(), id: \.self) { item in
                    Text("\(item)")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
