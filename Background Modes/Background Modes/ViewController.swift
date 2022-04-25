//
//  ViewController.swift
//  Background Modes
//
//  Created by Yavuz Güner on 25.04.2022.
//

import UIKit
import AVFoundation
//Ses dosyası çalıştırmak için en baştan ekleyeceğiz.

class ViewController: UIViewController {

    var audioPlayer : AVAudioPlayer!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        do{
            let filePath = Bundle.main.path(forResource: "music", ofType: ".mp3")
            audioPlayer = try AVAudioPlayer(contentsOf: URL.init(fileURLWithPath: filePath!))
            audioPlayer.prepareToPlay()
        }catch {
            print(error.localizedDescription)
        }
    }

    @IBAction func startButton(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopButton(_ sender: Any) {
        audioPlayer.stop()
    }
}

