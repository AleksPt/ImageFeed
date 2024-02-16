import UIKit

protocol ImagesListCellDelegate: AnyObject {
    func imageListCellDidTapLike(_ cell: ImagesListCell)
}

final class ImagesListCell: UITableViewCell {
    static let reuseIdentifier = "ImagesListCell"
    weak var delegate: ImagesListCellDelegate?
    
    @IBOutlet var dateLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    @IBOutlet var cellImage: UIImageView!
    
    @IBAction func likeButtonClicked(_ sender: UIButton) {
        delegate?.imageListCellDidTapLike(self)
    }
    
    override func prepareForReuse(){
        super.prepareForReuse()
        cellImage.kf.cancelDownloadTask()
    }
    
    func setIsLiked(isLiked: Bool) {
        let likeImage = isLiked ? UIImage(named: "like_button_on") : UIImage(named: "like_button_off")
        likeButton.setImage(likeImage, for: .normal)
    }
}
