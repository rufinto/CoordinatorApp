//
//  LemonView.swift
//  CoordinatorApp
//
//  Created by Toukap Joan-Rufin on 04/11/2024.
//

import SwiftUI

struct LemonView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        
        List {
            
            Button("Dismiss") {
                coordinator.dismissSheet()
            }
            
        }
        .navigationTitle("🍋‍🟩")
    }
        
}

#Preview {
    CoordinatorView()
}
