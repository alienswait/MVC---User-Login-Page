//
//  NetworkService.swift
//  MVC - User Login Page
//
//  Created by Mertcan Ünek on 24.07.2023.
//

import Foundation
class NetworkService{
    static let shared = NetworkService()
    private init() {
        
    }
    
    private var user:User?
    
    func login(username: String, password: String, completion: @escaping(Bool) -> Void){
        DispatchQueue.global().async {
            sleep(2)
            DispatchQueue.main.async {
                if username == "mertcan" && password == "aslan"{
                    self.user = User(name: "Mert Can", username: "mertcan", age: 25, address: Address(city: "istanbul", country: "türkiye"))
                    completion(true)
                }else{
                    self.user = nil
                    completion(false)
                }
            }
        }
    }
}
