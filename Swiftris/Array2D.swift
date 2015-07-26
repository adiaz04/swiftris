//
//  Arrady2D.swift
//  Swiftris
//
//  Created by angel diaz on 7/26/15.
//  Copyright (c) 2015 Angel Diaz. All rights reserved.
//

import Foundation

class Arrady2D<T> {
    let columns: Int
    let rows: Int
    
    var array: Array<T?>
    
    init(columns: Int, rows: Int) {
        self.columns = columns
        self.rows = rows
        
        array = Array<T?>(count:rows * columns, repeatedValue: nil)
    }
    
    subscript(column: Int, row: Int) -> T? {
        get {
            return array[(row * columns) + column]
        }
        set(newValue) {
            array[(row * columns) + column] = newValue
        }
    }
}