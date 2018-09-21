//
//  ViewController.swift
//  SpyApp
//
//  Created by Alexander Caley on 9/2/18.
//  Copyright © 2018 Alexander Caley. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var input: UITextField!
    @IBOutlet weak var secret: UITextField!
    @IBOutlet weak var output: UILabel!
    
    
    let factory = CipherFactory()
    var cipher: Cipher = ErrorCipher()
    
    @IBAction func caesarCipherPressed(_ sender: UIButton) {
        cipher = factory.cipher(for: "Caesar")
    }
    
    @IBAction func alphaCipherPressed(_ sender: UIButton) {
        cipher = factory.cipher(for: "AlphaCipher")
    }
    
    @IBAction func subCipherPressed(_ sender: UIButton) {
        cipher = factory.cipher(for: "SubCipher")
    }
    
    @IBAction func arithCipherPressed(_ sender: UIButton) {
        cipher = factory.cipher(for: "ArithCipher")
    }
    
    @IBAction func encodeButtonPressed(_ sender: UIButton) {
        output.text = cipher.encode(input.text!, secret: secret.text!)
    }
    
    @IBAction func decodeButtonPressed(_ sender: UIButton) {
        output.text = cipher.decode(input.text!, secret: secret.text!)
    }
}
