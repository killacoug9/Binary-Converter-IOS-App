//
//  ByteCalculator.swift
//  Binary Visualizer
//
//  Created by Kyle Hawkins on 8/14/22.
//

import Foundation

let BYTE_SIZE = 8

// where the bit array is basially a byte but backwards
class Byte: ObservableObject {
    var mByteArr: [Bit] = []
    
    init(byteArr: [Bit] = []) {
        for i in 0...BYTE_SIZE - 1 {
            mByteArr[i] = Bit(power: i, status: false);
        }
    }
    
    var mByteWeightedValue: Int {
        var tempInt: Int = 0
        for item in mByteArr { tempInt += item.getWeightedValue() }
        return tempInt
    }
    
    func getByteValue() -> Int{
        return mByteWeightedValue
    }
    
//    func display() -> some View {
//
//        ForEach (mByteArr) {
//            bit in bit.display()
//
//        }
//    }
    
}
