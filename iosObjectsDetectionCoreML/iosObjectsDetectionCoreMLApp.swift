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
    
    init() {
        UINavigationBar.applyCustomAppearance()
    }
    
    var body: some Scene {
        WindowGroup {
            CameraView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

fileprivate extension UINavigationBar {
    
    static func applyCustomAppearance() {
        let appearance = UINavigationBarAppearance()
        appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
}
