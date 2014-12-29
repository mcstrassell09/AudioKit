//
//  main.swift
//  AudioKit
//
//  Created by Aurelius Prochazka on 12/14/14.
//  Copyright (c) 2014 Aurelius Prochazka. All rights reserved.
//

import Foundation

class Instrument : AKInstrument {

    override init() {
        super.init()

        let operation = AKLinearControl()
        connect(operation)

        let oscillator = AKOscillator()
        oscillator.frequency = operation.scaledBy(100.ak)
        connect(oscillator)

        connect(AKAudioOutput(audioSource:oscillator))
    }
}

let instrument = Instrument()
AKOrchestra.addInstrument(instrument)
AKOrchestra.testForDuration(10)
instrument.play()

while(AKManager.sharedManager().isRunning) {} //do nothing
println("Test complete!")
