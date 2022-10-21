//
//  SubjectVC.swift
//  Notification Center
//
//  Created by Admin on 17/10/22.
//

import UIKit

protocol SubjectSelectionDelegate {
    func didSelectedSubject(name: String, image: UIImage?)
}

class SubjectVC: UIViewController {
    
    var subjectDelegate: SubjectSelectionDelegate!

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func marathiButtonPressed(_ sender: Any) {
        dismiss(animated: true)
        subjectDelegate.didSelectedSubject(name: "Marathi", image: UIImage(systemName: "mappin.and.elipse"))
        
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: marathiNotificationKey), object: nil)
    }
    
    
    @IBAction func hinfiButtonPressed(_ sender: Any) {
       dismiss(animated: true)
        
        subjectDelegate.didSelectedSubject(name: "Hindi", image: UIImage(systemName: "hand.thumbsup"))

//
//        NotificationCenter.default.post(name: NSNotification.Name(rawValue: hindiNotoficationKey), object: nil)
    }
}
