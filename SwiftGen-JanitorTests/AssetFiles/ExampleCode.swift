//
//  ExampleCode.swift
//  AssetsAnalyser
//
//  Created by Felipe Braunger Valio on 28/04/17.
//  Copyright © 2017 Movile. All rights reserved.
//

import Cocoa

class ExampleCode {

    func doNothing() {
        _ = Localization.journeyPopup("banana", "carambola")
        _ = Localization.aboutSatyanatha
        _ = Localization.reminderTime
        _ = Asset.btnPlayer.image
        _ = Asset.btnPlayer

        self.begin()
    }
    
    func begin() {
        // decoy method
    }
}
