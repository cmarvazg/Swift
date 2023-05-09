//
//  User.swift
//  CursoFirebase
//
//  Created by Laboratorio UNAM-Apple1 on 29/06/22.
//

import Foundation

struct User
{
    var name : String
    var email : String
    var image : String
    
    init(withDictionary dictionary : [String : Any])
    {
        self.name = dictionary["name"] as? String ?? ""
        self.email = dictionary["email"] as? String ?? ""
        self.image = dictionary["image"] as? String ?? ""
    }
}
