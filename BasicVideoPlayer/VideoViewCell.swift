//
//  VideoViewCell.swift
//  BasicVideoPlayer
//
//  Created by Philipp Lazarev on 15.06.2024.
//

import Foundation
import UIKit

class VideoViewCell: UITableViewCell {
    
    
    
    // MARK: - Subviews
    private lazy var videoView: VideoView = {
        let view = VideoView(frame: .zero, video: defaultVideo)
        view.backgroundColor = .green
        return view
    }()
    
    
    
    // MARK: - Lifecycle

    init(style: UITableViewCell.CellStyle, reuseIdentifier: String?, video: YouTubeVideo) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubviews(video: video)
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        addSubviews(video: defaultVideo)
        setupConstraints()
    }
    
    
    
    // MARK: - Private
    private func addSubviews(video: YouTubeVideo) {
        contentView.addSubview(videoView)
        videoView.titleLabel.text = video.title
        videoView.authorLabel.text = video.author
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            videoView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            videoView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            videoView.topAnchor.constraint(equalTo: contentView.topAnchor),
            videoView.heightAnchor.constraint(equalToConstant: 100)
        ])
    }
}
