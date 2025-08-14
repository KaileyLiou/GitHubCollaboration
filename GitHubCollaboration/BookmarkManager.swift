//
//  BookmarkManager.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/14/25.
//

import Foundation
import SwiftUI

class BookmarkManager: ObservableObject {
    @Published var bookmarks: [String] = []
}
