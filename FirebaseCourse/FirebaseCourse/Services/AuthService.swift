//
//  AuthService.swift
//  CursoFirebase
//
//  Created by Laboratorio UNAM-Apple1 on 29/06/22.
//

import Foundation
import FirebaseAuth
import UIKit

struct AuthCredential
{
    var name : String
    var email : String
    var password : String
    var image : UIImage
}


struct AuthService
{
    static func authUser(withCredential credential : AuthCredential, completition : @escaping(Error?) -> Void)
    {
        ImageUploadService.uploadProfileImage(image: credential.image) { imageUrl in
            Auth.auth().createUser(withEmail: credential.email, password: credential.password) { result, error in
                
                if let result = result, error == nil
                {
                    let  uid = result.user.uid
                    
                    //Darle persistencia al usuario
                    
                    UserService.save(uid: uid, imageUrl: imageUrl, credential: credential)
                } else {
                    
                    print("DEBUG: - AuthUser: \(error!.localizedDescription)")
                }
            }
        }
    }
}
