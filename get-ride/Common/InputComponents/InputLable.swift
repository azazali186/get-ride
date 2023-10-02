import SwiftUI

struct InputLable: View {
    @Binding var modelName: String
    var placeholder: String
    var title: String
    @FocusState private var fieldFocus: Bool

    var body: some View {
        
            VStack {
                Label(title, systemImage: "").padding()
                TextField(
                    "",
                    text: $modelName,
                    prompt: Text(placeholder).foregroundColor(Color(hex: "#fff"))
                ).padding()
                    .autocapitalization(.none)
                    .keyboardType(.emailAddress)
                    .disableAutocorrection(true)
                    .frame(width: 250.0)
                    .background(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke(Color(hex: "#ffffff"), lineWidth: 2)
                    )
            }
        }
    
}

struct InputLable_Previews: PreviewProvider {
    static var previews: some View {
        InputLable(modelName: .constant(""), placeholder: "", title: "Username")
    }
}
