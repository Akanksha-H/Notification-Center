//
//  ViewController.swift
//  Notification Center
//
//  Created by Admin on 17/10/22.
//

import UIKit

//let marathiNotificationKey = "marathi"
//let hindiNotoficationKey = "hindi"

class MainVC: UIViewController {
    

    @IBOutlet weak var subjectName: UILabel!
    @IBOutlet weak var getStarteButton: UIButton!
    
    @IBOutlet weak var subjectImage: UIImageView!
    //    let marathi = Notification.Name(rawValue: marathiNotificationKey)
//    let hindi = Notification.Name(rawValue: hindiNotoficationKey)
//
    override func viewDidLoad() {
        super.viewDidLoad()
       // createObserver()
    }
    
    //To remove observer when the screen is no longer visible so it will not wait for any notification
    
//    deinit {
//        NotificationCenter.default.removeObserver(self)
//    }

    @IBAction func getStartdedButtonPressed(_ sender: Any) {
        let subjectVC = storyboard?.instantiateViewController(withIdentifier: "SubjectVC") as! SubjectVC
        
        //Confirmation of delegate
        subjectVC.subjectDelegate = self
        present(subjectVC, animated: true, completion: nil)
    }
    
}

extension MainVC: SubjectSelectionDelegate {
    func didSelectedSubject(name: String, image: UIImage?) {
        subjectName.text = name
        subjectImage.image = image
    }
    
//    func didSelectedSubject(name: String) {
//        subjectName.text = name
//    }
    
}
    
//    func createObserver(){
//
//        //For Marathi
//        NotificationCenter.default.addObserver(self, selector: #selector(MainVC.changeLable(notification:)), name: marathi, object: nil)
//
//        //For Hindi
//        NotificationCenter.default.addObserver(self, selector: #selector(MainVC.changeLable(notification:)), name: hindi, object: nil)
//    }
//
//    @objc func changeLable(notification: NSNotification){
//        let choosenMarathi = notification.name == marathi
//        let lable = choosenMarathi ? "Marathi" : "Hindi"
//
//        subjectName.text = lable
//    }
//}

