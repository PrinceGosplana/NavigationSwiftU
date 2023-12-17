//
//  ButtonsOnToolbarView.swift
//  NavigationSwiftU
//
//  Created by OLEKSANDR ISAIEV on 17.12.2023.
//

import SwiftUI

struct ButtonsOnToolbarView: View {
    var body: some View {
        NavigationStack {
            Text("Hello, world")
                .toolbar {
                    ToolbarItem(placement: .topBarLeading) {
                        Button("Tap Me") {
                            
                        }
                    }
                    ToolbarItemGroup(placement: .topBarTrailing) {
                        Button("Or Tap Me") {
                            
                        }
                        Button("And Me") {
                            
                        }
                    }
                }
                .navigationBarBackButtonHidden()
        }
    }
}

#Preview {
    ButtonsOnToolbarView()
}
