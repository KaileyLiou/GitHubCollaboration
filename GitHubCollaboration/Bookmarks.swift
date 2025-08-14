//
//  Bookmarks.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/13/25.
//


import SwiftUI
import Foundation
import Combine


class bookMarks: ObservableObject {
    @Published var marks: [String] = ["no bookmarks added"]
}

struct Bookmarks: View {
    @StateObject private var Marks = bookMarks()
    var body: some View {
            VStack{
                Text("My Bookmarks")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding()
                List(Marks.marks, id: \.self) {mark in Text(mark)
                    .multilineTextAlignment(.center)}
            }//end vstack
    } //end of body

} //end of struct



#Preview {
    Bookmarks()
}
