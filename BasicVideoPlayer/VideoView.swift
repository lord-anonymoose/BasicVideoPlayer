//
//  VideoView.swift
//  BasicVideoPlayer
//
//  Created by Philipp Lazarev on 15.06.2024.
//

import Foundation
import UIKit

class VideoView: UIView {
    
    //var video: YouTubeVideo
    
    // MARK: - Subviews
    let titleLabel: UILabel = {
        let label = UILabel()
        //label.textColor = UIColor.textColor
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize:20, weight: .bold)
        return label
    }()
    
    let authorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    // MARK: - Lifecycle
    
    init(frame: CGRect, video: YouTubeVideo) {
        super.init(frame: frame)
        addSubviews(video: video)
        setupConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupConstraints()
    }
    
    
    // MARK: - Private
    
    private func addSubviews(video: YouTubeVideo) {
        addSubview(titleLabel)
        addSubview(authorLabel)
        titleLabel.text = video.title
        authorLabel.text = video.author
    }
    
    private func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 10),
            titleLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
        NSLayoutConstraint.activate([
            authorLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 10),
            authorLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 10),
            authorLabel.heightAnchor.constraint(equalToConstant: 20)
        ])
        
    }
    
}
