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
    var body: some View {
        Text("Hello, World!")
    }
}

#Preview {
    NavStackReturnToRootView()
}
