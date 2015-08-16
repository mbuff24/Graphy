//
//  AdjacencyList.swift
//  Graphy
//
//  Created by Martino Buffolino on 8/16/15.
//  Copyright © 2015 mbuff24. All rights reserved.
//

import Foundation

class AdjacencyList<T: protocol<Hashable, Equatable>> {
    
    var edges: [Vertex<T>: [Vertex<T>]] = [:]
    
    init() {}
    
    func indexOfEdge(source: Vertex<T>, dest: Vertex<T>) -> Int? {
        guard let sourceEdges = edges[source],
            edgeIndex = sourceEdges.indexOf(dest) else {
                return nil
        }
        
        return edgeIndex
    }
    
    func addEdge(source: Vertex<T>, dest: Vertex<T>) {
        if let index = indexOfEdge(source, dest: dest) {
            print("edge alreadt exists at \(index)")
        } else if let _ = edges[source] {
            edges[source]?.append(dest)
        } else {
            edges[source] = [dest]
        }
    }
    
    func removeEdge(source: Vertex<T>, dest: Vertex<T>) {
        if let index = indexOfEdge(source, dest: dest) {
            edges[source]?.removeAtIndex(index)
        }
    }
    
}