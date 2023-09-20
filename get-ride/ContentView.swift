import SwiftUI

struct ContentView: View {
    @State private var username: String = ""
    @State private var password: String = ""
    

    var body: some View {
        VStack {
            InputLable(username: $username, name: "Username")
            InputLable(username: $password, name: "Password")
            CustomSiginButton()
            
        }
        .padding()
        .background(Color(UIColor(red: CGFloat(0), green: CGFloat(154), blue: CGFloat(124), alpha: CGFloat(0.0))))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
