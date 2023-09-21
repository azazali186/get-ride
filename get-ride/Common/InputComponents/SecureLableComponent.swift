import SwiftUI

struct SecureLableComponent: View {
    @Binding var modelName: String
    var placeholder: String
    var title: String
    @FocusState private var fieldFocus: Bool

    var body: some View {
        
            VStack {
                Label(title, systemImage: "").padding()
                SecureField(
                    "",
                    text: $modelName,
                    prompt: Text(placeholder).foregroundColor(Color(hex: "#fff"))
                    
                ).padding()
                    .frame(width: 250.0)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color(hex: "#ffffff"), lineWidth: 2)
                    )
            }
        }
    
}

struct SecureLableComponent_Previews: PreviewProvider {
    static var previews: some View {
        SecureLableComponent(modelName: .constant(""), placeholder: "", title: "Username")
    }
}

