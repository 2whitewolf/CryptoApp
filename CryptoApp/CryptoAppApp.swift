//
//  CryptoAppApp.swift
//  CryptoApp
//
//  Created by Bogdan Sevcenco on 27.05.2022.
//

import SwiftUI

@main
struct CryptoAppApp: App {
     @StateObject private var vm = HomeViewModel()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor : UIColor(Color.theme.accent)]
    }
    var body: some Scene {
        WindowGroup {
            NavigationView{
                HomeView()
                    .navigationBarHidden(true)
                  
            }
            .environmentObject(vm)
        }
    }
}
