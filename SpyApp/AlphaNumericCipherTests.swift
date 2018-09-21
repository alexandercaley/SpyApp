//
//  AlphaNumericCipherTests.swift
//  SpyAppTests
//
//  Created by Alexander Caley on 9/20/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import XCTest
@testable import SpyApp

class AlphaNumericCipherTests: XCTestCase {

    var cipher: Cipher!
    
    override func setUp() {
        super.setUp()
        cipher = AlphanumericCaesarCipher()
    }
    
    func test_oneCharacterStringGetsMappedToSelfWith_0_secret(){
        let plaintext = "A"
        
        let result = cipher.encode(plaintext, secret: "0")
        
        XCTAssertEqual(plaintext, result)
    }
    
    func test_nonNumericInputForSecret(){
        let result = cipher.encode("B", secret: "nonNumericString")
        
        XCTAssertEqual("Invalid Input!", result)
        
    }
    
    func test_noInputByUser(){
        let plaintext = ""
        let secret = ""
        
        let result = cipher.encode(plaintext, secret: secret)
        XCTAssertEqual("Invalid Input!", result)
    }
    
    func test_UppercaseErrorMessage(){
        let plaintext = "lowercase_text"
        let secret = "2"
        
        let result = cipher.encode(plaintext, secret: secret)
        XCTAssertEqual("Uppercase Only!", result)
    }

}
