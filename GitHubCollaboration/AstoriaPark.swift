//
//  AstoriaPark.swift
//  GitHubCollaboration
//
//  Created by Scholar on 8/12/25.
//

import SwiftUI

struct AstoriaPark: View {
    var body: some View {
        VStack {
            HStack {
                Text("Astoria Park")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                Spacer()
                Text("★★★★")
                    .font(.system(size:30))
                    .foregroundColor(Color.yellow)
            } .padding()
        }
        Spacer()
    }
    }
#Preview {
    AstoriaPark()
}
