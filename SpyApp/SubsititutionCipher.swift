//
//  SubsititutionCipher.swift
//  SpyApp
//
//  Created by Alexander Caley on 9/18/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import Foundation

struct SubstitutionCipher: Cipher{
    
    let alphabet = " 1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ!,./?- "
    let dictionary = "NXgtqG/FJ7UI-z0!CKOb cQ5Z8WuVBnxkTfm1oplr6eDjEdPRYvHLy3MAi49ah2,sS.w? "
    
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
        for character in plaintext{
            if (alphabet.contains(character)){
                let index = dictionary.index(before: dictionary.index(after: alphabet.firstIndex(of: character)!))
                encoded += String(dictionary[index])
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
        for character in plaintext{
            if (alphabet.contains(character)){
                let index = alphabet.index(before: alphabet.index(after: dictionary.firstIndex(of: character)!))
                decoded += String(alphabet[index])
            }
        }
        return decoded
    }
}
