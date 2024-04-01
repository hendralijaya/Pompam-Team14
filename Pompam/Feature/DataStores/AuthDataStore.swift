//
//  AuthDataStore.swift
//  Pompam
//
//  Created by hendra on 31/03/24.
//

import Foundation

@MainActor
class AuthDataStore: ObservableObject {
    @Published var user: Users? = nil
    var httpClient: HTTPClient
    
    private let userDefaultsKey = "LoggedInUser"
    
    init(httpClient: HTTPClient) {
        self.httpClient = httpClient
        loadUserFromUserDefaults()
    }
    
    func login(email: String, password: String) async throws {
        let successResponse = SuccessResponse(success: true, data: Users.self)
        let resource = Resource(url: APIs.login.url, modelType: successResponse)
        user = try await httpClient.load(resource)
    }
    
    func isLoggedIn() -> Bool {
        return user != nil
    }
    
    private func loadUserFromUserDefaults() {
        if let userData = UserDefaults.standard.data(forKey: userDefaultsKey) {
            let decoder = JSONDecoder()
            if let decodedUser = try? decoder.decode(Users.self, from: userData) {
                self.user = decodedUser
            }
        }
    }
    
    private func saveUserToUserDefaults() {
        if let user = self.user {
            let encoder = JSONEncoder()
            if let encodedData = try? encoder.encode(user) {
                UserDefaults.standard.set(encodedData, forKey: userDefaultsKey)
            }
        }
    }
}
