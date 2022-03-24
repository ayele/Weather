//
//  Extentions.swift
//  Weather
//
//  Created by Amanuel Ayele on 3/23/22.
//

import Foundation
import SwiftUI

extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}

extension LinearGradient {
    static func myGradient() -> LinearGradient {
        LinearGradient(gradient: Gradient(colors: [Color(red: 0.196, green: 0.314, blue: 0.439),
                                                   Color(red: 0.286, green: 0.251, blue: 0.459)]),
                       startPoint: .top,
                       endPoint: .bottom)
    }
}
