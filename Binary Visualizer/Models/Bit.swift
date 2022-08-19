//
//  Bit.swift
//  Binary Visualizer
//
//  Created by Kyle Hawkins on 8/14/22.
//

import Foundation
//import SwiftUI

/*
 mPower init by using power.
 mStatus init by status
 id
 mValue - is the value of if its 1 or 0
 */
class Bit: Identifiable, ObservableObject {
    var mPower: Int
    var mStatus: Bool
    var id: Int { Int(mPower) }
    //@State var mVal: Int
    
    var mValue: Int {
        return mStatus ? Int(1) : Int(0)
    }

    init(power: Int = 0, status: Bool = false) {
        mPower = power
        mStatus = status
    }

    func toggleBit(){
        mStatus = !mStatus
    }
    
    func getWeightedValue() -> Int {
        return Int(pow(Double(mPower), Double(mStatus ? 1 : 0)))
    }
    
//    func display() -> some View {
//        TextField("", value: $mVal, formatter: NumberFormatter())
//    }
}
