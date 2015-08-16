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
    
    func exists(source: Vertex<T>, dest: Vertex<T>) -> Bool {
        let sourceEdges = edges[source]
        if let _ = sourceEdges?.indexOf(dest) {
            return true
        }
        
        return false
    }
    
    func addEdge(source: Vertex<T>, dest: Vertex<T>) {
        if !exists(source, dest: dest) {
            
        }
    }
    
    func removeEdge(source: Vertex<T>, dest: Vertex<T>) {
        
    }
    
}