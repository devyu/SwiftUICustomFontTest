//
//  TesstApp.swift
//  Tesst
//
//  Created by JY on 2023/5/5.
//

import SwiftUI

@main
struct TesstApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
