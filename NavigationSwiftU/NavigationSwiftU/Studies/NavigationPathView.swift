//
//  NavigationPathView.swift
//  NavigationSwiftU
//
//  Created by OLEKSANDR ISAIEV on 16.12.2023.
//

import SwiftUI

struct NavigationPathView: View {
    @State private var path = NavigationPath()
    
    var body: some View {
        NavigationStack(path: $path) {
            List {
                ForEach(0..<5) { i in
                    NavigationLink("Select number \(i)", value: i)
                }
                ForEach(0..<5) { i in
                    NavigationLink("Select string \(i)", value: String(i))
                }
            }
            .toolbar {
                Button("Push 555") {
                    path.append(555)
                }
                Button("Push hello") {
                    path.append("hello")
                }
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You selected the number \(selection)")
            }
            .navigationDestination(for: String.self) { selection in
                Text("You selected the string \(selection)")
            }
        }
    }
}

#Preview {
    NavigationPathView()
}
