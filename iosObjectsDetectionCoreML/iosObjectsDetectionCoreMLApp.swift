//
//  iosObjectsDetectionCoreMLApp.swift
//  iosObjectsDetectionCoreML
//
//  Created by Denys on 17.05.2023.
//

import SwiftUI

@main
struct iosObjectsDetectionCoreMLApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
