//
//  ImageUploadService.swift
//  CursoFirebase
//
//  Created by Laboratorio UNAM-Apple1 on 29/06/22.
//

import Foundation
import UIKit
import FirebaseStorage

struct ImageUploadService
{
    static func uploadProfileImage(image : UIImage, completion : @escaping(_ imageUrl : String) -> Void)
    {
        guard let imageData = image.jpegData(compressionQuality: 0.75) else {return }
        
        let fileName = NSUUID().uuidString
        
        let ref = Storage.storage().reference(withPath: "/profile_image/\(fileName)")
        
        ref.putData(imageData) { metadata, error in
            
        if let error = error
        {
            print("DEBUG: - Error uploading image \(error.localizedDescription)")
            return
        }
        
            ref.downloadURL { url, error in
                
                guard let imageUrl = url?.absoluteString else {return}
                
                completion(imageUrl)
            }
        }
    }
}
