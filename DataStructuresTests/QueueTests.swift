//
//  QueueTests.swift
//  DataStructuresTests
//
//  Created by Sibson, Harry (AGDF) on 03/03/2022.
//

import XCTest

class QueueTests: XCTestCase {
    func testQueueEnqueue(){
        let queue = Queue()
        let testValues = [(inputValue: ["1","2","3"], expected: ["1","2","3","4"]),(inputValue: [], expected: ["4"])]
        for testValue in testValues {
            let actual = queue.enqueue(queue: testValue.inputValue, item: "4")
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    func testQueueDequeue(){
        let queue = Queue()
        let testValues = [(inputValue: ["1","2","3","4"], expected: ["2","3","4"]),(inputValue: ["4"], expected: [])]
        for testValue in testValues {
            let actual = queue.dequeue(queue: testValue.inputValue)
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    func testQueueSize(){
        let queue = Queue()
        let testValues = [(inputValue: ["1","2","3","4"], expected: 4),(inputValue: ["4"], expected: 1), (inputValue: [], expected: 0)]
        for testValue in testValues {
            let actual = queue.size(queue: testValue.inputValue)
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    
    

    

}
