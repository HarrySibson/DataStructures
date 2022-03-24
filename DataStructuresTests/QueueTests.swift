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
    
    func testQueueShow(){
        let queue = Queue()
        let testValues = [(inputValue: ["1","2","3","4"], expected: "The Queue: 1, 2, 3, 4, "),(inputValue: ["4"], expected: "The Queue: 4, "), (inputValue: [], expected: "The Queue: ")]
        for testValue in testValues {
            let actual = queue.show(queue: testValue.inputValue)
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    func testQueueShowFront(){
        let queue = Queue()
        let testValues = [(inputValue: ["1","2","3","4"], expected: "Front of queue: 1"),(inputValue: ["4"], expected: "Front of queue: 4"), (inputValue: [], expected: "Queue is empty")]
        for testValue in testValues {
            let actual = queue.showFront(queue: testValue.inputValue)
            XCTAssertEqual(actual, testValue.expected)
        }
    }
    
    
    

    

}
