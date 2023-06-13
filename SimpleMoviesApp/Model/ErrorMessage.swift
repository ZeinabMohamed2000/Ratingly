//
//  ErrorMessage.swift
//  SimpleMoviesApp
//
//  Created by Zeinab on 12/06/2023.
//

import Foundation

enum MError: String, Error {
    case invaildUrl = "This URL is invalid, Please try again..."
    case invalidData = "The data received from the server was invalid. Please try again"
    
    
}
