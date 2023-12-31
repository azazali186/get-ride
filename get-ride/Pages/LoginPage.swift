import SwiftUI

struct LoginPage: View {
    @ObservedObject var userModel: UserModal

    var body: some View {
        ZStack {
            // background
            Color(hex: "#0d0630").edgesIgnoringSafeArea(.all)
            
            VStack {
                InputLable(modelName: $userModel.username, placeholder: "Enter your username", title: "Username")
                SecureLableComponent(modelName: $userModel.password, placeholder: "Enter your password", title: "Password")
                CustomSignInButton(isLoading: $userModel.isLoading,action: userModel.login
                ).padding()
                
            }.foregroundStyle(
                Color(hex: "#fff")
            ).fontWeight(.bold)
            .padding()
            .background(Color(hex: "#0d0630"))
        }
    }
}

extension Color {
    init(hex: String) {
        let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int: UInt64 = 0

        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(
            .sRGB,
            red: Double(r) / 255,
            green: Double(g) / 255,
            blue: Double(b) / 255,
            opacity: Double(a) / 255
        )
    }
}


struct LoginPage_Previews: PreviewProvider {
    static var previews: some View {
        LoginPage(userModel: UserModal())
    }
}
