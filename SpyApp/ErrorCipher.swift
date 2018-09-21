//
//  ErrorCipher.swift
//  SpyApp
//
//  Created by Alexander Caley on 9/10/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

struct ErrorCipher: Cipher{
    let error = "Select a Cipher!"
    func encode(_ plaintext: String, secret: String) -> String {
        return error
    }
    
    func decode(_ plaintext: String, secret: String) -> String {
        return error
    }
}
