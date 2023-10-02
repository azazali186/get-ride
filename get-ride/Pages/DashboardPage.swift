import SwiftUI

struct DashboardPage: View {
    var user: User
    
    var body: some View {
        VStack {
            if let username = user.username {
                Text("Welcome \(username) to the Dashboard!")
                    .font(.headline)
            } else {
                Text("Welcome to the Dashboard!")
                    .font(.headline)
            }
        }
        .padding()
    }
}
