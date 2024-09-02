//
//  SettingsView.swift
//  Fructus
//
//  Created by Raka Permana on 02/09/24.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // SECTION 1
                    GroupBox(
                        label: 
                            SettingsLabelView(labelText: "Fructus",labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // SECTION 2
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish, you can restart the application by toogle the switch in this box. That way it starts onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minWidth: 68)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnboarding) {
                            Text("Restart".uppercased()).fontWeight(.bold)
                        }
                        .padding()
                        .background(
                            Color(.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous))
                        )
                    }
                    
                    // SECTION 3
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")) {
                        
                        SettingsRowView(name: "Developer", content: "Raka Permana")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linkLabel: "SwiftUI Masterclass", linkDestination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@rakapermanaptr", linkDestination: "twitter.com/rakapermanaptr")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
                    
                } //: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }, label: {
                        Image(systemName: "xmark")
                    })
                )
                .padding()
            } //: SCROLL
        } //: NAVIGATION
    }
}

// MARK: - PREVIEW
#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
}
