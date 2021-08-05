//
//  ViewController.swift
//  Xylophone
//
//  Created by 大江祥太郎 on 2021/08/05.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func keyPressed(_ sender: UIButton) {
        
        if let name = sender.currentTitle {
            playSound(soundName: name)
        }
        
    }
    
    func playSound(soundName:String) {
        if let url = Bundle.main.url(forResource: soundName, withExtension: "wav"){
            player = try! AVAudioPlayer(contentsOf: url)
            player.play()
        }
        
                
    }
}
