//
//  PlaylistHeaderCollectionReusableView.swift
//  Spotify
//
//  Created by Aaron Johncock on 19/12/2022.
//

import UIKit
import SDWebImage

protocol PlaylistHeaderCollectionReusableViewDelegate: AnyObject {
    func PlaylistHeaderCollectionReusableViewDidTapPlayAll(_ header: PlaylistHeaderCollectionReusableView)
}

final class PlaylistHeaderCollectionReusableView: UICollectionReusableView {
    static let identifier = "PlaylistHeaderCollectionReusableView"
    
    weak var delegate: PlaylistHeaderCollectionReusableViewDelegate?
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.font = .systemFont(ofSize: 22, weight: .semibold)
        return label
    }()
    
    private let descriptionLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 18, weight: .regular)
        label.numberOfLines = 0
        return label
    }()
    
    private let ownerLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        label.font = .systemFont(ofSize: 18, weight: .light)
        return label
    }()
    
    private let playlistImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.image = UIImage(systemName: "photo")
        return imageView
    }()
    
    private let playAllButton: UIButton = {
        let button = UIButton()
        button.backgroundColor = .green
        let image = UIImage(systemName: "play.fill", withConfiguration: UIImage.SymbolConfiguration(pointSize: 30, weight: .regular))
        
        button.setImage(image, for: .normal)
        button.tintColor = .white
        button.layer.cornerRadius = 30
        button.layer.cornerCurve = .continuous
        button.clipsToBounds = true
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        addSubview(playlistImage)
        addSubview(nameLabel)
        addSubview(descriptionLabel)
        addSubview(ownerLabel)
        addSubview(playAllButton)
        playAllButton.addTarget(self, action: #selector(didTapPlayAll), for: .touchUpInside)

    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let imageSize: CGFloat = height / 1.8
        playlistImage.frame = CGRect(x: (width - imageSize) / 2, y: 20, width: imageSize, height: imageSize)
        
        nameLabel.frame = CGRect(x: 10, y: playlistImage.bottom, width: width - 20, height: 44)
        descriptionLabel.frame = CGRect(x: 10, y: nameLabel.bottom, width: width - 20, height: 44)
        ownerLabel.frame = CGRect(x: 10, y: descriptionLabel.bottom, width: width - 20, height: 44)
        
        playAllButton.frame = CGRect(x: height - 80, y: height - 80, width: 60, height: 60)

    }
    
    func configure(with viewModel: PlaylistHeaderViewModel) {
        nameLabel.text = viewModel.name
        ownerLabel.text = viewModel.ownerName
        descriptionLabel.text = viewModel.description
        playlistImage.sd_setImage(with: viewModel.artworkURL)
        
    }
    
    @objc private func didTapPlayAll() {
        delegate?.PlaylistHeaderCollectionReusableViewDidTapPlayAll(self)
    }
    
}
