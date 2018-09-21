//
//  Cipher.swift
//  SpyApp
//
//  Created by Alexander Caley on 9/10/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

protocol Cipher {
    func encode(_ plaintext: String, secret: String) -> String
    func decode(_ plaintext: String, secret: String) -> String
}
