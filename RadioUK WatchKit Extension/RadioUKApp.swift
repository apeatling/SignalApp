//
//  RadioUKApp.swift
//  RadioUK WatchKit Extension
//
//  Created by apeatling on 2020-09-27.
//

import SwiftUI

@main
struct RadioUKApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
