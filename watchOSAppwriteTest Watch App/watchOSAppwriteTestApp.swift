//
//  watchOSAppwriteTestApp.swift
//  watchOSAppwriteTest Watch App
//
//  Created by Dakota Kim on 1/24/23.
//

import SwiftUI
import FirebaseCore

@main
struct watchOSAppwriteTest_Watch_AppApp: App {
    init() {
            FirebaseApp.configure()
        }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
