//
//  SwiftUIBasicsApp.swift
//  SwiftUIBasics
//
//  Created by Goutham Raj N on 06/09/22.
//

import SwiftUI

@main
struct SwiftUIBasicsApp: App {
    @StateObject private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
