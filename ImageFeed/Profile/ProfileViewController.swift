import UIKit

final class ProfileViewController: UIViewController {
    
    private var avatarImageView: UIImageView = {
        let avatarImageView = UIImageView()
        avatarImageView.image = UIImage(named: "avatar")
        avatarImageView.tintColor = .gray
        avatarImageView.translatesAutoresizingMaskIntoConstraints = false
        return avatarImageView
    }()
    
    private var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = "Екатерина Новикова"
        nameLabel.textColor = .white
        nameLabel.font = .systemFont(ofSize: 23, weight: .bold)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    
    private var loginNameLabel: UILabel = {
        let loginNameLabel = UILabel()
        loginNameLabel.text = "@ekaterina_nov"
        loginNameLabel.textColor = .gray
        loginNameLabel.font = .systemFont(ofSize: 13, weight: .regular)
        loginNameLabel.translatesAutoresizingMaskIntoConstraints = false
        return loginNameLabel
    }()
    
    private var descriptionLabel: UILabel = {
        let descriptionLabel = UILabel()
        descriptionLabel.text = "Hello, world!"
        descriptionLabel.textColor = .white
        descriptionLabel.font = .systemFont(ofSize: 13, weight: .regular)
        descriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        return descriptionLabel
    }()
    
    var logoutButton: UIButton = {
        let logoutButton = UIButton.systemButton(
            with: UIImage(named: "logout_button") ?? UIImage(),
            target: self,
            action: #selector(Self.didTapLogoutButton)
        )
        logoutButton.tintColor = UIColor(
            red: 245/255,
            green: 107/255,
            blue: 108/255,
            alpha: 1
        )
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
        return logoutButton
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(avatarImageView)
        showAvatarImageView()
        
        view.addSubview(nameLabel)
        showNameLabel()
        
        view.addSubview(loginNameLabel)
        showLoginNameLabel()
        
        view.addSubview(descriptionLabel)
        showDescriptionLabel()
        
        view.addSubview(logoutButton)
        showLogoutButton()
    }

    private func showAvatarImageView() {
        avatarImageView.leadingAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.leadingAnchor,
            constant: 16
        ).isActive = true
        avatarImageView.topAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.topAnchor,
            constant: 32
        ).isActive = true
        avatarImageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        avatarImageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
    }
    
    private func showNameLabel() {
        nameLabel.leadingAnchor.constraint(
            equalTo: avatarImageView.leadingAnchor
        ).isActive = true
        nameLabel.topAnchor.constraint(
            equalTo: avatarImageView.bottomAnchor,
            constant: 8
        ).isActive = true
    }
    
    private func showLoginNameLabel() {
        loginNameLabel.leadingAnchor.constraint(
            equalTo: nameLabel.leadingAnchor
        ).isActive = true
        loginNameLabel.topAnchor.constraint(
            equalTo: nameLabel.bottomAnchor,
            constant: 8
        ).isActive = true
    }
    
    private func showDescriptionLabel() {
        descriptionLabel.leadingAnchor.constraint(
            equalTo: nameLabel.leadingAnchor
        ).isActive = true
        descriptionLabel.topAnchor.constraint(
            equalTo: loginNameLabel.bottomAnchor,
            constant: 8
        ).isActive = true
    }
    
    private func showLogoutButton() {
        logoutButton.widthAnchor.constraint(equalToConstant: 44).isActive = true
        logoutButton.heightAnchor.constraint(equalToConstant: 44).isActive = true
        logoutButton.trailingAnchor.constraint(
            equalTo: view.safeAreaLayoutGuide.trailingAnchor,
            constant: -16
        ).isActive = true
        logoutButton.centerYAnchor.constraint(equalTo: avatarImageView.centerYAnchor).isActive = true
    }
    
    @objc
    private func didTapLogoutButton() {
    }
}
