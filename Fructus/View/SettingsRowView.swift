//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Raka Permana on 02/09/24.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)

            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

// MARK: PREVIEW
#Preview {
    Group {
        SettingsRowView(name: "Website", linkLabel: "Google", linkDestination: "https")
            .padding()
        SettingsRowView(name: "Developer", content: "Raka", linkLabel: "Google", linkDestination: "https")
            .padding()
    }
}
