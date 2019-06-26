//
//  UserViewController.swift
//  Guidr
//
//  Created by Uptiie on 6/24/19.
//  Copyright © 2019 Walcenberg, Inc. All rights reserved.
//

import UIKit

class UserViewController: UIViewController {
    
    // MARK: Properties
    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var timeAsGuideLabel: UILabel!
    
    var userName: String?
    var apiController: APIController?
    
    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        getDetails()
        
    }
    
    func getDetails() {
        guard let apiController = apiController,
            let userName = userName else { return }
        
        apiController.fetchDetails(for: userName) { result in
            if let user = try? result.get() {
                DispatchQueue.main.async {
                    self.updateViews(with: user)
                    
                }
                // fetch image for animal
                apiController.fetchImage(at: user.text, completion: { result in
                    if let image = try? result.get() {
                        DispatchQueue.main.async {
                            self.user.text = displayName
                        }
                    }
            })
        }
    }
        
        func updateViews(with user: User) {
            userNameLabel.text = user.username
            bioLabel.text = user.bio
            ageLabel.text = 
            timeAsGuideLabel
        }

        // Do any additional setup after loading the view.
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
