//
//  Created by Netology on 18.06.2021.
//

import UIKit
import AVFoundation
import AVKit
import YouTubeiOSPlayerHelper

class PlaylistViewController: UIViewController {
    
    
    
    // MARK: Subviews
        
    private lazy var playlistView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .systemBlue
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
        
        
        
    // MARK: - Lifecycle
        
    override func viewDidLoad() {
        setupUI()
        addSubviews()
        setupConstraints()
        setupDelegates()
        super.viewDidLoad()
    }
        
        
        
    // MARK: - Actions
        
    /*
    @objc private func exampleFunc(_ sender: Any) {

    }
    */
        

        
    // MARK: - Private
        
    private func setupUI() {
        view.backgroundColor = .lightGray
    }
        
    private func addSubviews() {
        view.addSubview(playlistView)
    }
        
    private func setupConstraints() {
        let safeAreaGuide = view.safeAreaLayoutGuide
            
        NSLayoutConstraint.activate([
            playlistView.leadingAnchor.constraint(equalTo: safeAreaGuide.leadingAnchor),
            playlistView.trailingAnchor.constraint(equalTo: safeAreaGuide.trailingAnchor),
            playlistView.topAnchor.constraint(equalTo: safeAreaGuide.topAnchor),
            playlistView.bottomAnchor.constraint(equalTo: safeAreaGuide.bottomAnchor)
        ])
    }
    
    private func setupDelegates() {
        playlistView.delegate = self
        playlistView.dataSource = self
        playlistView.register(VideoViewCell.self, forCellReuseIdentifier: "cell")
    }
    
}

extension PlaylistViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        myPlaylist.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let video = myPlaylist[indexPath.row]
        let cell = VideoViewCell(style: .default, reuseIdentifier: "cell", video: video)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        100
    }
}

extension PlaylistViewController: UITableViewDelegate {
    
}
