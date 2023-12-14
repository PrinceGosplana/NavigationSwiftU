//
//  NavigationLinkView.swift
//  Drawing
//
//  Created by OLEKSANDR ISAIEV on 14.12.2023.
//

import SwiftUI

struct DetailView: View {
    var number: Int
    
    var body: some View {
        Text("Detail View \(number)")
    }
    
    init(number: Int) {
        self.number = number
        print("Creating detail view with \(number)")
    }
}

struct NavigationLinkView: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Tap me") {
                DetailView(number: 888)
            }
        }
    }
}

#Preview {
    NavigationLinkView()
}
