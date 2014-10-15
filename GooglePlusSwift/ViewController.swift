//
//  ViewController.swift
//  GooglePlusSwift
//
//  Created by Fernando Olivares on 10/15/14.
//  Copyright (c) 2014 Spiffy. All rights reserved.
//

import UIKit

//G+
import AddressBook
import MediaPlayer
import AssetsLibrary
import CoreLocation
import CoreMotion

class ViewController: UIViewController, GPPSignInDelegate {

    var signIn : GPPSignIn?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        signIn = GPPSignIn.sharedInstance()
        signIn?.shouldFetchGooglePlusUser = true
        signIn?.clientID = "354806566918-bdjeltfs0r8reuhpr3sj7musp08h396a.apps.googleusercontent.com"
        signIn?.scopes = [kGTLAuthScopePlusLogin]
        signIn?.delegate = self
        signIn?.authenticate()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK: G+
    func finishedWithAuth(auth: GTMOAuth2Authentication!, error: NSError!) {
        
    }
    
    func didDisconnectWithError(error: NSError!) {
        
    }
}

