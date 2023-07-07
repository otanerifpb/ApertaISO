//
//  ApertaIOSApp.swift
//  ApertaIOS
//
//  Created by ifpb on 07/07/23.
//

import SwiftUI

@main
struct ApertaIOSApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(apertaVM: ApertaViewModel())
        }
    }
}
