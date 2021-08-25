//
//  echoApp.swift
//  echo
//
//  Created by Howard(temp) on 3/10/21.
//

import UIKit
import SwiftUI
import AVFAudio
import AVFoundation

@main
struct echo: App {
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let engine = AVAudioEngine.init()
        
        engine.connect(engine.inputNode, to: engine.outputNode, format: engine.inputNode.outputFormat(forBus: 0))
        
        //let player = AVAudioNode.init()
        
        //engine.attach(player)
        
        print("a")
        
        // Other post-launch configuration.
        return true
        
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
