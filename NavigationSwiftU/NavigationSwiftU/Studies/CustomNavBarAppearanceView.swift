//
//  CustomNavBarAppearanceView.swift
//  NavigationSwiftU
//
//  Created by OLEKSANDR ISAIEV on 17.12.2023.
//

import SwiftUI

struct CustomNavBarAppearanceView: View {
    var body: some View {
        NavigationStack {
            List(0..<100) { i in
                Text("Row \(i)")
            }
            .navigationTitle("Title goes here")
            .navigationBarTitleDisplayMode(.inline)
            // add color for navigation when the list scrolls up for all toolbars in the project
//            .toolbarBackground(.blue)
            // add color for navigation when the list scrolls up for this particular toolbar
            .toolbarBackground(.blue, for: .navigationBar)
            // revert text color when the list scrolls up
            .toolbarColorScheme(.dark)
            // this code hides toolbar for the particular screen
//            .toolbar(.hidden, for: .navigationBar)
        }
    }
}

#Preview {
    CustomNavBarAppearanceView()
}
