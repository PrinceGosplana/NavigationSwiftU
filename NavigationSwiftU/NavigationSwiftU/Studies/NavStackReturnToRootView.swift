//
//  NavStackReturnToRootView.swift
//  NavigationSwiftU
//
//  Created by OLEKSANDR ISAIEV on 17.12.2023.
//

import SwiftUI

@Observable
class PathStore {
    var path: [Int] {
        didSet {
            
        }
    }
    
    private let savePath = URL.documentsDirectory.appending(path: "SavedPath")
    
    init() {
        if let data = try? Data(contentsOf: savePath) {
            if let decoded = try? JSONDecoder().decode([Int].self, from: data) {
                path = decoded
                return
            }
        }
        path = []
    }
    
    func save() {
        do {
            let data = try JSONEncoder().encode(path)
            try data.write(to: savePath)
        } catch {
            print("Failed to save navigation data")
        }
    }
}
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
