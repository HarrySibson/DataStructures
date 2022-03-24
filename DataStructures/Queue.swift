//
//  Queue.swift
//  DataStructures
//
//  Created by Sibson, Harry (AGDF) on 03/03/2022.
//

import Foundation

class Queue: ObservableObject {
    func enqueue(queue: [String], item: String)-> [String]{
        var returnQueue = queue
        returnQueue.append(item)
        return returnQueue
    }
    
    func dequeue(queue: [String])-> [String]{
        var returnQueue = queue
        if returnQueue.count != 0 {
            returnQueue.removeFirst()
        }
        return returnQueue
    }
    
    func size (queue:[String])->Int{
        return queue.count
    }
    
    func show(queue:[String])-> String{
        var returnValue = "The Queue: "
        for item in queue{
            returnValue += "\(item), "
        }
        return returnValue
    }
    
    func showFront(queue:[String])-> String{
        if queue.count > 0 {
            return "Front of queue: \(queue[0])"
        }
        else{
            return "Queue is empty"
        }
        
    }
        
}
