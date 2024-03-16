//
//  fireBaseSwiftUIProjectApp.swift
//  fireBaseSwiftUIProject
//
//  Created by Ainur on 15.03.2024.
//

import SwiftUI
import Firebase

@main
struct fireBaseSwiftUIProjectApp: App {
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
