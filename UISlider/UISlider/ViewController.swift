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
    let slider = UISlider()
    
    // outlet
    @IBOutlet weak var sliderBoard: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Слайдер
        self.slider.frame = CGRect(x: 0, y: 0, width: 200, height: 23)
        self.slider.center = self.view.center
        self.slider.minimumValue = 0.0
        self.slider.maximumValue = 100.0
        self.view.addSubview(slider)
    
        self.slider.addTarget(self, action: #selector(controlAudio(param:)), for: .valueChanged)
        
        do {
            if let audioPath = Bundle.main.path(forResource: "audio", ofType: "mp3") {
                try player = AVAudioPlayer(contentsOf: URL(fileURLWithPath: audioPath))
                self.slider.maximumValue = Float(player.duration)
            }
        } catch {
            print("Error")
        }
        
        self.player.play()
        
    }
    
    //MARK: - Method
    @objc func controlAudio(param: UISlider) {
        if param == slider {
            self.player.currentTime = TimeInterval(param.value)
        }
    }
    
    //MARK: - Action
    @IBAction func playAudio(_ sender: Any) {
        self.player.play()
    }
    
    //MARK: - Action
    @IBAction func pauseAudio(_ sender: Any) {
        self.player.pause()
    }
    
    
    @IBAction func sliderAction(_ sender: Any) {
        self.player.volume = self.sliderBoard.value
    }
    
}

