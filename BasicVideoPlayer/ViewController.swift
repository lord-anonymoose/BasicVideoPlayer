//
//  Created by Netology on 18.06.2021.
//

import UIKit
import AVFoundation
import AVKit
import YouTubeiOSPlayerHelper

class ViewController: UIViewController {

    private lazy var streamURL = URL(string: "https://www.youtube.com/embed/bq1gSj53Hw4")!

    private lazy var localURL: URL = {
        let path = Bundle.main.path(forResource: "test", ofType: "mp4")!
        return URL(fileURLWithPath: path)
    }()

    @IBAction func playButtonPressed(_ sender: Any) {
        // Создаём AVPlayer со ссылкой на видео.
        let player = AVPlayer(url: streamURL)

        // Создаём AVPlayerViewController и передаём ссылку на плеер.
        let controller = AVPlayerViewController()
        controller.player = player

        // Показываем контроллер модально и запускаем плеер.
        present(controller, animated: true) {
            player.play()
        }
    }
}

