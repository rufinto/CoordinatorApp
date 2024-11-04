//
//  OliveViewView.swift
//  CoordinatorApp
//
//  Created by Toukap Joan-Rufin on 04/11/2024.
//

import SwiftUI

struct OliveView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        
        List {
            
            Button("Dismiss") {
                coordinator.dismissFullScreenCover()
            }
            
        }
        .navigationTitle("🫒")
    }
}

#Preview {
    CoordinatorView()
}
