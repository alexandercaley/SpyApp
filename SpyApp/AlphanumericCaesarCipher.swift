//
//  AlphanumericCaesarCipher.swift
//  SpyApp
//
//  Created by Alexander Caley on 9/10/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

struct AlphanumericCaesarCipher: Cipher{
    
    let str = " 0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    func encode(_ plaintext: String, secret: String) -> String {
        var encoded = ""
        if (plaintext == "" || secret == ""){
            return "Invalid Input!"
        }
        
        for character in secret{
            if (character.unicodeScalars.first!.value < 48 || character.unicodeScalars.first!.value > 57){
                return "Invalid Input!"
            }
        }
        
        if(Int(secret)! > 10){
            return "Secret must 10 or less"
        }
            let shiftBy = UInt32(secret)!
            
            for character in plaintext{
                if (str.contains(character)){
                    let unicode = character.unicodeScalars.first!.value
                    if (unicode >= 97 && unicode <= 122){
                        return "Uppercase Only!"
                    }
                    var shiftedUnicode = unicode
                    var i = 0
                    if (unicode == 32){
                        i = Int(shiftBy)
                    }
                    while (i < shiftBy){
                        i = i + 1
                        if (shiftedUnicode == 57){
                            shiftedUnicode = 65
                        }
                        
                        else if (shiftedUnicode == 90){
                            shiftedUnicode = 48
                        }
                            
                        else{
                            shiftedUnicode = shiftedUnicode + 1
                        }
                    }
                    let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                    encoded += shiftedCharacter
                } else{
                    return "Invalid Input!"
                }
            }
        
        return encoded
    }
    
    func decode(_ plaintext: String, secret: String) -> String {
        var decoded = ""
        if (plaintext == "" || secret == ""){
            return "Invalid Input!"
        }
        
        for character in secret{
            if (character.unicodeScalars.first!.value < 48 || character.unicodeScalars.first!.value > 57){
                return "Invalid Input!"
            }
        }
        
        if(Int(secret)! > 10){
            return "Secret must 10 or less"
        }
            let shiftBy = UInt32(secret)!
            
            for character in plaintext{
                if (str.contains(character)){
                    let unicode = character.unicodeScalars.first!.value
                    if (unicode >= 97 && unicode <= 122){
                        return "Uppercase Only!"
                    }
                    var shiftedUnicode = unicode
                    var i = 0
                    if (unicode == 32){
                        i = Int(shiftBy)
                    }
                    while (i < shiftBy){
                        i = i + 1
                        if (shiftedUnicode == 65){
                            shiftedUnicode = 57
                        }
                            
                        else if (shiftedUnicode == 48){
                            shiftedUnicode = 90
                        }
                            
                        else{
                            shiftedUnicode = shiftedUnicode - 1
                        }
                    }
                    let shiftedCharacter = String(UnicodeScalar(UInt8(shiftedUnicode)))
                    decoded += shiftedCharacter
                } else{
                    return "Invalid Input!"
                }
            }
        
        return decoded
    }
}
