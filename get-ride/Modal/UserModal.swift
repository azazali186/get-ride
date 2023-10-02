import SwiftUI

class UserModal: ObservableObject {
    @Published var username: String = ""
    @Published var password: String = ""
    @Published var isAuthenticated: Bool = false
    @Published var navigateToDashboard: Bool = false
    @Published var token: String?
    @Published var loginResponse: LoginResponseData?
    
    @Published var showErrorAlert = false
    @Published var errorMessage = ""
    @Published var isLoading: Bool = false
    
    func login() {
        self.isLoading = true
        guard let url = URL(string: "http://localhost:3099/api/auth-service/auth/login") else {
            self.errorMessage = "Invalid URL"
            self.showErrorAlert = true
            return
        }

        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        
        let credentials = ["email": username, "password": password]
        do {
            request.httpBody = try JSONEncoder().encode(credentials)
            request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        } catch {
            self.errorMessage = "Error encoding credentials: \(error.localizedDescription)"
            self.showErrorAlert = true
            return
        }
        
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            DispatchQueue.main.async {
                guard let data = data, error == nil else {
                    self.errorMessage = error?.localizedDescription ?? "Unknown error"
                    self.showErrorAlert = true
                    return
                }
                
                do {
                    let decoder = JSONDecoder()
                    self.loginResponse = try decoder.decode(LoginResponseData.self, from: data)
                    
                    if let tokenValue = self.loginResponse?.token {
                        print("tokenValue: \(tokenValue)")
                        self.token = tokenValue
                        self.isAuthenticated = true
                        self.navigateToDashboard = true
                    } else {
                        self.isAuthenticated = false
                        self.navigateToDashboard = false
                    }
                } catch {
                    self.errorMessage = "Error decoding login response: \(error.localizedDescription)"
                    self.showErrorAlert = true
                }
                
                self.isLoading = false
            }
        }
        task.resume()
    }

    
}
