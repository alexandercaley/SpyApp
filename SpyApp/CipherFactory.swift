//
//  CipherFactory.swift
//  SpyApp
//
//  Created by Alexander Caley on 9/2/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

struct CipherFactory{
    private var ciphers: [String: Cipher] = [
        "Caesar": CaesarCipher(),
        "AlphaCipher": AlphanumericCaesarCipher(),
        "SubCipher": SubstitutionCipher(),
        "ArithCipher": ArithmeticCipher(),
        "Error": ErrorCipher()
    ]
    
    func cipher(for key: String) -> Cipher{
        return ciphers[key]!
    }
}
