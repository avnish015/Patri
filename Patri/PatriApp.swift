//
//  PatriApp.swift
//  Patri
//
//  Created by Avnish on 26/05/21.
//

import SwiftUI

@main
struct PatriApp: App {
    var body: some Scene {
        WindowGroup {
            HomeView()
                .environmentObject(HomeViewModel())
        }
    }
}
