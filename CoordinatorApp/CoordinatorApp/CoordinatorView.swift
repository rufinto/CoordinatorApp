//
//  CoordinatorView.swift
//  CoordinatorApp
//
//  Created by Toukap Joan-Rufin on 04/11/2024.
//

import SwiftUI

struct CoordinatorView: View {
    
    @StateObject private var coordinator = Coordinator()
    
    var body: some View {
        
        NavigationStack(path: $coordinator.path) {
            
            coordinator.build(page: .apple)
            
                .navigationDestination(for: Page.self){
                    page in coordinator.build(page: page)
                    }
            
                .sheet(item: $coordinator.sheet) {
                    sheet in coordinator.build(sheet: sheet)
                }
            
                .fullScreenCover(item: $coordinator.fullScreenCover){ fullScreenCover in coordinator.build(fullScreenCover: fullScreenCover)
                }
        }
        .environmentObject(coordinator)
    }
}

#Preview {
    CoordinatorView()
}
