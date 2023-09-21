//
//  CustomSiginButton.swift
//  get-ride
//
//  Created by Janny on 20/9/23.
//

import SwiftUI

struct CustomSignInButton: View {
    @State private var showAlert: Bool = false
    var action: () -> Void
    
    var body: some View {
        VStack {
            Button("Sign-in") {
                action()
            }.padding()
                .background(
                            ZStack {
                                RoundedRectangle(
                                    cornerRadius: 20
                                )
                                .stroke(Color(hex: "#ffffff"), lineWidth: 2)
                            }
                        )
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Signin Clicked"),
                      message: Text("You clicked the Sign-in button!"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}
