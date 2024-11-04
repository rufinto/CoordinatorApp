//
//  AppleView.swift
//  CoordinatorApp
//
//  Created by Toukap Joan-Rufin on 04/11/2024.
//

import SwiftUI

struct AppleView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
    
        List {
            
            Button("Push 🍌") {
                coordinator.push(.banana)
            }
            
            Button("Present 🍋‍🟩") {
                coordinator.present(.lemon)
                
            }
            
            Button("Present 🫒") {
                
                coordinator.present(.olive)
            }
            
        }
        .navigationTitle("🍎")
    }
}


#Preview {
    CoordinatorView()
}
