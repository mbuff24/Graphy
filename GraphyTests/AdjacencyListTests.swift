//
//  AdjacencyListTests.swift
//  Graphy
//
//  Created by Martino Buffolino on 8/16/15.
//  Copyright © 2015 mbuff24. All rights reserved.
//

import XCTest
@testable import Graphy

class AdjacencyListTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let graph = AdjacencyList<Int>()
        let v0 = Vertex<Int>(data: 0)
        let v1 = Vertex<Int>(data: 1)
        let v2 = Vertex<Int>(data: 2)
        let v3 = Vertex<Int>(data: 3)
        
        // 0 -> 1
        // 1 -> 2
        // 2 -> 3
        graph.addEdge(v0, dest: v1)
        graph.addEdge(v1, dest: v2)
        graph.addEdge(v2, dest: v3)
        
        if let e0 = graph.indexOfEdge(v0, dest: v1) {
            XCTAssertEqual(e0, 0, "v0 -> v1")
        } else {
            XCTAssertTrue(false, "There should be an edge from v0 to v1")
        }
        
        if let e1 = graph.indexOfEdge(v1, dest: v2) {
            XCTAssertEqual(e1, 0, "v0 -> v1")
        } else {
            XCTAssertTrue(false, "There should be an edge from v1 to v2")
        }
        
        if let e2 = graph.indexOfEdge(v2, dest: v3) {
            XCTAssertEqual(e2, 0, "v0 -> v1")
        } else {
            XCTAssertTrue(false, "There should be an edge from v2 to v3")
        }
    }
    
}