//
//  Profile.swift
//  CursoFirebase
//
//  Created by Laboratorio UNAM-Apple1 on 29/06/22.
//

import UIKit

class Profile: UIViewController {

    @IBOutlet weak var imgProfileImage: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    
    @IBOutlet weak var lblemail: UILabel!
    
    @IBOutlet weak var butCloseSesion: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func settingView()
    {
        UserService.getUser { user in
            
            self.lblName.text = user.name
            self.lblemail.text = user.email
            
            if let imageData = try? Data(contentsOf: URL(string: user.image)!)
            {
                self.imgProfileImage.image = UIImage(data: imageData)
            }
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
}
