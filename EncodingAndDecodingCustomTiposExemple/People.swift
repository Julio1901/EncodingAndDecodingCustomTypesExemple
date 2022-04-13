//
//  People.swift
//  EncodingAndDecodingCustomTiposExemple
//
//  Created by Julio Cesar  on 12/04/22.
//

import Foundation

struct People: Codable {
    var name: String
    var age: Int
    
    public func encode(){
        
        let encoder = JSONEncoder()
        do {
             let peopleJson = try encoder.encode(self)
             print(String(data: peopleJson, encoding: .utf8))
                
        } catch {
             print("Unable to perform encoding")
        }
    }
    
    public func decoder(peopleJason: String ){
        let decoder = JSONDecoder()
        
        let dado = Data(peopleJason.utf8)
        
        do {
            let objetoDecodificado = try decoder.decode([People].self, from: dado)
            print(objetoDecodificado[0].name)
        } catch {
            print("Unable to perform decoding")
        }
    }
    
}


