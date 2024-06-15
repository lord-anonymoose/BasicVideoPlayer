//
//  VideoView.swift
//  BasicVideoPlayer
//
//  Created by Philipp Lazarev on 15.06.2024.
//

import Foundation
import UIKit
import YouTubeiOSPlayerHelper

class VideoView: UIView {
    

    
    // MARK: - Subviews
    let youTubeVideo: YTPlayerView = {
        let video = YTPlayerView()
        video.translatesAutoresizingMaskIntoConstraints = false
        video.isUserInteractionEnabled = true
        return video
    }()
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize:15, weight: .bold)
        label.numberOfLines = 2
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 16)
        label.numberOfLines = 1
        label.lineBreakMode = .byTruncatingTail
        return label
    }()
    
    
    
    // MARK: - Lifecycle
    
    init(frame: CGRect, video: YouTubeVideo) {
        super.init(frame: frame)
        addSubviews(video: video)
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        addSubviews(video: defaultVideo)
        setupConstraints()
    }
    
    override func hitTest(_ point: CGPoint, with event: UIEvent?) -> UIView? {
        let playerPoint = convert(point, to: youTubeVideo)
        if youTubeVideo.bounds.contains(playerPoint) {
            return youTubeVideo.hitTest(playerPoint, with: event)
        }
        return super.hitTest(point, with: event)
    }
    
    
    // MARK: - Private
    
    private func addSubviews(video: YouTubeVideo) {
        addSubview(titleLabel)
        addSubview(authorLabel)
        addSubview(youTubeVideo)
        
        titleLabel.text = video.title
        authorLabel.text = video.author
        youTubeVideo.load(withVideoId: video.id)
        backgroundColor = . green
    }
    
    
    private func setupConstraints() {
                
        NSLayoutConstraint.activate([
            youTubeVideo.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 5),
            youTubeVideo.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -5),
            youTubeVideo.topAnchor.constraint(equalTo: topAnchor, constant: 5),
            youTubeVideo.heightAnchor.constraint(equalTo: youTubeVideo.widthAnchor, multiplier: 9.0/16.0)
        ])
        
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            titleLabel.topAnchor.constraint(equalTo: youTubeVideo.bottomAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(equalToConstant: 44)
        ])
        
        NSLayoutConstraint.activate([
            authorLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            authorLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            authorLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
}
