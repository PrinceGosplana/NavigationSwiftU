//
//  NavStackReturnToRootView.swift
//  NavigationSwiftU
//
//  Created by OLEKSANDR ISAIEV on 17.12.2023.
//

import SwiftUI

struct DetailNavView: View {
    var number: Int
    @Binding var path: NavigationPath
    
    var body: some View {
        NavigationLink("Go to random number", value: Int.random(in: 1...1000))
            .navigationTitle("Number \(number)")
            .toolbar {
                Button("Home") {
                    path = NavigationPath()
                }
            }
    }
}
struct NavStackReturnToRootView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            DetailNavView(number: 0, path: $path)
                .navigationDestination(for: Int.self) { i in
                    DetailNavView(number: i, path: $path)
                }
        }
    }
}

#Preview {
    NavStackReturnToRootView()
}
