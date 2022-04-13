//
//  ViewController.swift
//  EncodingAndDecodingCustomTiposExemple
//
//  Created by Julio Cesar  on 12/04/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var people = People(name:"Julio",age: 25)
        try people.encode()
        
        let mockPeopleEncoded = "[{\"name\":\"Julio\",\"age\":25}]"       
        
        people.decoder(peopleJason: mockPeopleEncoded)
        
        
        
    }


}

