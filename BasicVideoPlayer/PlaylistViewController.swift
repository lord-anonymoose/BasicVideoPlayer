//
//  Created by Netology on 18.06.2021.
//

import UIKit
import AVFoundation
import AVKit
import YouTubeiOSPlayerHelper

class PlaylistViewController: UIViewController {
    
    

    private lazy var streamURL = URL(string: "https://www.youtube.com/embed/bq1gSj53Hw4")!

    private lazy var localURL: URL = {
        let path = Bundle.main.path(forResource: "test", ofType: "mp4")!
        return URL(fileURLWithPath: path)
    }()

    
    
    // MARK: Subviews
        
    private lazy var recordButton: UIButton = {
        let button = UIButton()
            
        return button
    }()
        
        
        
        
    // MARK: - Lifecycle
        
    override func viewDidLoad() {
        setupUI()
        addSubviews()
        setupConstraints()
        super.viewDidLoad()
    }
        
        
        
    // MARK: - Actions
        
    @objc private func exampleFunc(_ sender: Any) {

    }
        

        
        // MARK: - Private
        
    private func setupUI() {
        view.backgroundColor = .systemBackground
    }
        
    private func addSubviews() {
        //view.addSubview(imageView)
    }
        
    private func setupConstraints() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        let spacing = view.frame.size.width / 3
            
        NSLayoutConstraint.activate([

        ])
    }
    
    
    
    // MARK: - Private
        private func checkRecordPermission() {

        }
}

