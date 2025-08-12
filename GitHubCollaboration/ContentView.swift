//
//  ContentView.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            NavigationLink(destination: CentralPark()) {
                Text("Central Park")
                    .font(.headline)
                    .foregroundColor(Color.black)
            }//end central park nav link
            NavigationLink(destination: AstoriaPark()) {
                Text("Astoria Park")
                    .font(.headline)
                    .foregroundColor(Color.black)
            } //end astoria park nav link
            NavigationLink(destination: West_Side_Highway()) {
                Text("West Side Highway")
                    .font(.headline)
                    .foregroundColor(Color.black)
            } //end west side highway nav link
            NavigationLink(destination: Seaport()) {
                Text("Seaport")
                    .font(.headline)
                    .foregroundColor(Color.black)
            } //end seaport nav link
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
