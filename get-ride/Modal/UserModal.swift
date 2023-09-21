import SwiftUI

class UserModal: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isAuthenticated: Bool = false
    @Published var navigateToDashboard: Bool = false
    
    let adminUsername = "admin"
    let adminPassword = "admin"  // Please avoid using such simple passwords in real-world applications
    
    func login() {
        if username == adminUsername && password == adminPassword {
            isAuthenticated = true
        } else {
            isAuthenticated = false
        }
    }
}
