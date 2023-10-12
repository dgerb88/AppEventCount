//
//  ViewController.swift
//  App Event Count
//
//  Created by Dax Gerber on 10/12/23.
//

import UIKit

class ViewController: UIViewController {
    
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    var sceneWillConnectCount = 0
    var sceneDidDisconnectCount = 0
    var sceneDidBecomeActiveCount = 0
    var sceneWillResignActiveCount = 0
    var sceneWillEnterForegroundCount = 0
    var sceneDidEnterBackgroundCount = 0

    @IBOutlet weak var sceneDidEnterBackground: UILabel!
    @IBOutlet weak var sceneWillEnterForeground: UILabel!
    @IBOutlet weak var sceneWillResignActive: UILabel!
    @IBOutlet weak var sceneDidBecomeActive: UILabel!
    @IBOutlet weak var sceneWillConnectTo: UILabel!
    
    @IBOutlet weak var configurationForConnecting: UILabel!
    @IBOutlet weak var didFinishLaunchingWithOptions: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    func updateUI() {
        didFinishLaunchingWithOptions.text = "App was launched \(appDelegate.launchCount) time(s)"
        configurationForConnecting.text = "Configured and connected \(appDelegate.configurationForConnectingCount) times(s)"
        sceneWillConnectTo.text = "Scene will connect \(sceneWillConnectCount)"
        sceneDidBecomeActive.text = "Scene did become active \(sceneDidBecomeActiveCount)"
        sceneWillResignActive.text = "Scene will resign active \(sceneWillResignActiveCount)"
        sceneWillEnterForeground.text = "Scene will enter foreground \(sceneWillEnterForegroundCount)"
        sceneDidEnterBackground.text = "SCene did enter background \(sceneDidEnterBackgroundCount)"
    }

}

