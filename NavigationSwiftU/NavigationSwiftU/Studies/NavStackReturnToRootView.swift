//
//  NavStackReturnToRootView.swift
//  NavigationSwiftU
//
//  Created by OLEKSANDR ISAIEV on 17.12.2023.
//

import SwiftUI

struct DetailNavView: View {
    var number: Int
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
            .navigationTitle("Number \(number)")
    }
}

struct NavStackReturnToRootView: View {
    @State private var pathStore = PathStore()
    
    var body: some View {
        NavigationStack(path: $pathStore.path) {
            DetailNavView(number: 0)
                .navigationDestination(for: Int.self) { i in
                    DetailNavView(number: i)
                }
        }
    }
}

#Preview {
    NavStackReturnToRootView()
}
