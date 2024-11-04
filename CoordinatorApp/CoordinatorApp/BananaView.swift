//
//  BananaView.swift
//  CoordinatorApp
//
//  Created by Toukap Joan-Rufin on 04/11/2024.
//

import SwiftUI

struct BananaView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        
        List {
            
            Button("Push 🥕") {
                coordinator.push(.carrot)
            }
            
            Button("Pop") {
                coordinator.pop()
                
            }
            
        }
        .navigationTitle("🍌")
    }
}

#Preview {
    CoordinatorView()
}
