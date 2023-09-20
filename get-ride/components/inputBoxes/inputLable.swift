import SwiftUI

struct InputLable: View {
    @Binding var username: String
    var name: String
//    @Binding var emailFieldIsFocused: FocusState<Bool>

    var body: some View {
        VStack {
            Label(name, systemImage: "").padding()
                TextField(
                    "User name (email address)",
                    text: $username
                ).padding()
//                Text(username)
        }
    }
}

struct InputLable_Previews: PreviewProvider {
    static var previews: some View {
        InputLable(username: .constant(""), name: "Username")
    }
}
