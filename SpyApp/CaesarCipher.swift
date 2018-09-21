//
//  CaesarCipher.swift
//  SpyApp
//
//  Created by Alexander Caley on 9/2/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

struct CaesarCipher: Cipher{
    func encode(_ plaintext: String, secret: String) -> String {
        var encoded = ""
        if (plaintext == "" || secret == ""){
            return "Invalid Input!"
        }
        for character in secret{
            if (character.unicodeScalars.first!.value < 48 || character.unicodeScalars.first!.value > 57){
                return "Invalid Input!"
            }
        if(Int(secret)! > 10){
            return "Secret must 10 or less"
        }
            let shiftBy = UInt32(secret)!
            
            for character in plaintext{
                let unicode = character.unicodeScalars.first!.value
                let shiftedUnicode = unicode + shiftBy
                let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                encoded += shiftedCharacter
            }
        }
        return encoded
    }
    
    func decode(_ plaintext: String, secret: String) -> String{
        var decoded = ""
        if (plaintext == "" || secret == ""){
            return "Invalid Input!"
        }
        for character in secret{
            if (character.unicodeScalars.first!.value < 48 || character.unicodeScalars.first!.value > 57){
                return "Invalid Input!"
            }
        if(Int(secret)! > 10){
            return "Secret must 10 or less"
        }
            
            let shiftBy = UInt32(secret)!
            
            for character in plaintext{
                let unicode = character.unicodeScalars.first!.value
                let shiftedUnicode = unicode - shiftBy
                let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                decoded += shiftedCharacter
            }
        }
        return decoded
    }
}
