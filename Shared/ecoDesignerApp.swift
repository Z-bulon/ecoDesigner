//
//  ecoDesignerApp.swift
//  Shared
//
//  Created by Jeremy Pagerit on 26/06/2022.
//

import SwiftUI

@main
struct ecoDesignerApp: App {
    @StateObject private var modelData = ModelData()
    
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
