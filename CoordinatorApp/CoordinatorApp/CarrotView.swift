//
//  CarrotView.swift
//  CoordinatorApp
//
//  Created by Toukap Joan-Rufin on 04/11/2024.
//

import SwiftUI

struct CarrotView: View {
    
    @EnvironmentObject private var coordinator: Coordinator
    
    var body: some View {
        
        List {
            
            Button("Pop") {
                coordinator.pop()
            }
            
            Button("Pop to root") {
                coordinator.popToRoot()
                
            }
            
        }
        .navigationTitle("🍌")
    }
}

#Preview {
    CoordinatorView()
}
