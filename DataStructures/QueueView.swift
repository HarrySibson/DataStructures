//
//  QueueView.swift
//  DataStructures
//
//  Created by Sibson, Harry (AGDF) on 24/03/2022.
//

import SwiftUI

struct QueueView: View {
    @ObservedObject private var queue = Queue()
    @State public var startingQueue = ["1","2","3","4"]
    var body: some View {
        VStack{
            HStack{
                Spacer()
                Button("Enqueue",action:{
                    startingQueue = queue.enqueue(queue: startingQueue, item: "\(startingQueue.count+1)" )
                })
                Spacer()
                Button("Dequeue",action: {
                    startingQueue = queue.dequeue(queue: startingQueue)
                })
                Spacer()
            }
            List {
                ForEach(startingQueue, id: \.self) { item in
                    Text("\(item)")
                }
            }
        }
    }
}

struct QueueView_Previews: PreviewProvider {
    static var previews: some View {
        QueueView()
    }
}
