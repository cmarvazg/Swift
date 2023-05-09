//
//  SingUp.swift
//  CursoFirebase
//
//  Created by Laboratorio UNAM-Apple1 on 29/06/22.
//

import UIKit

class SingUp: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var imgProfileImage: UIImageView!
    
    @IBOutlet weak var txtName: UITextField!
    
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBOutlet weak var txtPassword: UITextField!
    
    @IBOutlet weak var txtConfirmPassword: UITextField!
    
    let imagePicker = UIImagePickerController()
    
    var didSelectedImage = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imagePicker.delegate = self
    }
    
    
   
    
    
    @IBAction func SingUp(_ sender: Any) {
        if let name = txtName.text, let email = txtEmail.text, let password = txtPassword.text, let confirmPassword = txtConfirmPassword.text
        {
            if !(name.isEmpty || email.isEmpty || password.isEmpty || !didSelectedImage)
            {
                if password == confirmPassword
                {
                    //Auth User
                    let credential = AuthCredential(name: name, email: email, password: password, image: imgProfileImage.image!)
                    AuthService.authUser(withCredential: credential) { error in
                        
                        if let error = error
                        {
                            print(error.localizedDescription)
                        }
                    }
                    self.navigationController?.popViewController(animated: true)
                    
                } else {
                    print("Passwords doesn't coincide.")
                }
            } else {
                print("Failed")
            }
        }

    }
    
    
    @IBAction func selectImage(_ sender: UIButton) {
        
        let alertControler = UIAlertController(title: "Choose a source", message: nil, preferredStyle: .actionSheet)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertControler.addAction(cancelAction)
        
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary)
        {
            let photoLibraryAction = UIAlertAction(title: "Photo Library", style: .default) { action in
                
                self.imagePicker.sourceType = .photoLibrary
                self.present(self.imagePicker, animated: true)
            }
            
            alertControler.addAction(photoLibraryAction)
        }
        alertControler.popoverPresentationController?.sourceView = sender
        self.present(alertControler, animated:true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        guard let selectedImage = info[.originalImage] as? UIImage else { return }
        
        imgProfileImage.image = selectedImage
        didSelectedImage = true
        
        self.dismiss(animated: true)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
