//
//  APIs.swift
//  Pompam
//
//  Created by hendra on 31/03/24.
//

import Foundation

enum APIs {
    
    case login
    case register
   
    private var baseURL: URL {
        URL(string: "https://gapura-depan.setneg.go.id/api_popam/1/")!
    }
    
    var url: URL {
        switch self {
            case .login:
                return baseURL.appendingPathComponent("/popam_user")
            case .register:
                return baseURL.appendingPathComponent("/newOrder")
        }
    }
}
