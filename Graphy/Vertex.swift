//
//  Vertex.swift
//  Graphy
//
//  Created by Martino Buffolino on 8/16/15.
//  Copyright © 2015 mbuff24. All rights reserved.
//

import Foundation

class Vertex<T: protocol<Hashable, Equatable>>: Hashable, Equatable {
    
    var data: T
    
    var hashValue: Int {
        return data.hashValue
    }
    
    init(data: T) {
        self.data = data
    }
    
}

func == <T: Equatable> (lhs: Vertex<T>, rhs: Vertex<T>) -> Bool {
    return lhs.data == rhs.data
}
