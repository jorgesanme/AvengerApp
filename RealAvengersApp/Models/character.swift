//
//  character.swift
//  RealAvengersApp
//
//  Created by Jorge Sanchez on 07/12/2020.
//

import Foundation

class  Character {
    
    var name: String = ""
    var image: String = ""
    var description: String = ""
    var nickName: String = ""
    
    init(name: String, image:String, description:String, nickName:String) {
       
        self.name = name
        self.image = image
        self.description = description
        self.nickName = nickName
        
    }
    
}
