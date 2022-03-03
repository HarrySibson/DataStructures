//
//  DataStructuresTests.swift
//  DataStructuresTests
//
//  Created by Sibson, Harry (AGDF) on 03/03/2022.
//

import XCTest
@testable import DataStructures

class DataStructuresTests: XCTestCase {
    
    func testStackPeek(){
        let stack = Stack()
        let testValues = [(inputValue: ["1","2","3"], expected: "3"),(inputValue: [], expected: "Empty")]
        for testValue in testValues {
            let actual = stack.peek(stack: testValue.inputValue)
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    func testStackView(){
        let stack = Stack()
        let testValues = [(inputValue: ["1","2","3"], expected: ["1","2","3"]),(inputValue: [], expected: [])]
        for testValue in testValues {
            let actual = stack.view(stack: testValue.inputValue)
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    func testStackPush(){
        let stack = Stack()
        let testValues = [(inputValue: ["1","2","3"], expected: ["1","2","3","4"]),(inputValue: [], expected: ["4"])]
        for testValue in testValues {
            let actual = stack.push(stack: testValue.inputValue, item: "4")
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    func testStackPop(){
        let stack = Stack()
        let testValues = [(inputValue: ["1","2","3","4"], expected: ["1","2","3"]),(inputValue: ["4"], expected: [])]
        for testValue in testValues {
            let actual = stack.pop(stack: testValue.inputValue)
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    
}
