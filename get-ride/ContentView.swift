import SwiftUI

struct ContentView: View {
    @ObservedObject var userModel = UserModal()
    
    var body: some View {
        NavigationView {
            if userModel.isAuthenticated, let userObject = userModel.loginResponse?.user {
                DashboardPage(user: userObject)
                    .onReceive([userObject].publisher.first()) { user in
                        print(user)
                    }
            } else {
                LoginPage(userModel: userModel)
            }
        }.alert(isPresented: $userModel.showErrorAlert) {
            Alert(title: Text("Error"),
                  message: Text(userModel.errorMessage),
                  dismissButton: .default(Text("OK")))
        }
    }
}
