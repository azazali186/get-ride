import SwiftUI

struct ContentView: View {
    @StateObject var viewModel = UserModal()
    
    @ObservedObject var userModel: UserModal = UserModal()
    
    var body: some View {
        NavigationView {
            if viewModel.isAuthenticated {
                DashboardPage()
            } else {
                LoginPage(userModel: viewModel)
            }
        }
    }
}
