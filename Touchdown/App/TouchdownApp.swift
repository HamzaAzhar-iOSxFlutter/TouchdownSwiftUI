//
//  TouchdownApp.swift
//  Touchdown
//
//  Created by Hamza Azhar on 17/03/2022.
//

import SwiftUI

@main
struct TouchdownApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(Shop())
        }
    }
}
