//
//  pan.swift
//  AudioKit For iOS
//
//  Autogenerated by scripts by Aurelius Prochazka. Do not edit directly.
//  Copyright © 2015 AudioKit. All rights reserved.
//

import Foundation

extension AKOperation {

    /** panned: Panner

     - returns: AKStereoOperation
     - parameter pan: Panning. A value of -1 is hard left, and a value of 1 is hard right, and 0 is center. (Default: 0, Minimum: -1, Maximum: 1)
     */
    public func panned(pan: AKParameter = 0) -> AKStereoOperation {
        return AKStereoOperation("(\(self) \(pan) pan)")
    }
}
