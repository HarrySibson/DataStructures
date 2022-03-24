//
//  Stack.swift
//  DataStructures
//
//  Created by Sibson, Harry (AGDF) on 03/03/2022.
//

import Foundation

class Stack: ObservableObject {
    
    func peek(stack: [String])-> String{
        if stack.count == 0{
            return "Empty"
        }else{
            return "\(stack[stack.count-1])"
        }
    }

    func view (stack: [String])-> [String]{
        return stack
    }
    
    func push(stack: [String], item: String)-> [String]{
        var returnStack = stack
        returnStack.append(item)
        return returnStack
    }
    
    func pop(stack: [String])-> [String]{
        var returnStack = stack
        if returnStack.count != 0 {
            returnStack.popLast()
        }
        return returnStack
    }
    
    func isFull(stack:[String]) -> Bool {
        if stack.count >= 10 {
            return true
        } else {
            return false
        }
    }
    func isEmpty(stack:[String]) -> Bool {
        if stack.count == 0 {
            return true
        } else {
            return false
        }
    }
}
