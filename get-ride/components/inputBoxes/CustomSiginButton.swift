//
//  CustomSiginButton.swift
//  get-ride
//
//  Created by Janny on 20/9/23.
//

import SwiftUI

struct CustomSiginButton: View {
    @State private var showAlert: Bool = false
    
    var body: some View {
        VStack {
            Button("Sign-in") {
                showAlert = true
            }.padding()
            .alert(isPresented: $showAlert) {
                Alert(title: Text("Signin Clicked"),
                      message: Text("You clicked the Sign-in button!"),
                      dismissButton: .default(Text("OK")))
            }
        }
    }
}

struct CustomSiginButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomSiginButton()
        }
}
