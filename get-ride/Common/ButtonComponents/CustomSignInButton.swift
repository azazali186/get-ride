import SwiftUI

struct CustomSignInButton: View {
    @Binding var isLoading: Bool
    @State private var showAlert: Bool = false
    var action: () -> Void
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .white))
            } else {
                Button("Sign-in") {
                    if !isLoading {  // Only call the action if not loading
                        action()
                    }
                }
                .padding()
                .background(
                    ZStack {
                        RoundedRectangle(
                            cornerRadius: 20
                        )
                        .stroke(Color(hex: "#ffffff"), lineWidth: 2)
                    }
                )
                .disabled(isLoading)  // Disable the button based on isLoading
                .alert(isPresented: $showAlert) {
                    Alert(title: Text("Signin Clicked"),
                          message: Text("You clicked the Sign-in button!"),
                          dismissButton: .default(Text("OK")))
                }
            }
        }
    }
}
