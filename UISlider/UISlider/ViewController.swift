//
//  ViewController.swift
//  UISlider
//
//  Created by Ришат Гайсин on 14/10/2018.
//  Copyright © 2018 Ришат Гайсин. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    var player = AVAudioPlayer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        do {
            if let audioPath = Bundle.main.path(forResource: "audio", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
            }
        } catch {
            print("Error")
        }
        
        self.player.play()
        
    }
    
    //MARK: - Action
    @IBAction func playAudio(_ sender: Any) {
        self.player.play()
    }
    
    //MARK: - Action
    @IBAction func pauseAudio(_ sender: Any) {
        self.player.pause()
    }
    
}

