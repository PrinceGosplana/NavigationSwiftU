//
//  EditableNavigationTitleView.swift
//  NavigationSwiftU
//
//  Created by OLEKSANDR ISAIEV on 17.12.2023.
//

import SwiftUI

struct EditableNavigationTitleView: View {
    @State private var title = "SwiftUI"
    
    var body: some View {
        NavigationStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                .navigationTitle($title)
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    EditableNavigationTitleView()
}
