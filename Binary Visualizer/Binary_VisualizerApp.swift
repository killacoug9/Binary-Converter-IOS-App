//
//  Binary_VisualizerApp.swift
//  Binary Visualizer
//
//  Created by Kyle Hawkins on 8/14/22.
//

import SwiftUI

@main
struct Binary_VisualizerApp: App {
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    //ContentView()
                    ConversionScreenView()
                }
                .tabItem {
                    Label("Conversion", systemImage: "number")
                }
                        //.navigationTitle("Conversion")
                NavigationView {
                    ListScreenView()
                }
                .tabItem {
                    Label("List", systemImage: "scroll")
                }
                        //.navigationTitle("List")
                NavigationView {
                    SettingsScreenView()
                }
                .tabItem {
                    Label("Settings", systemImage: "gear")
                }
                        //.navigationTitle("Settings")
            }
        }
    }
}
