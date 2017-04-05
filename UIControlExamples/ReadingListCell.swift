//
//  ReadingListCell.swift
//  UIControlExamples
//
//  Created by Watanabe Toshinori on 4/5/17.
//  Copyright © 2017 Watanabe Toshinori. All rights reserved.
//

import UIKit

class ReadingListCell: UITableViewCell {

    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var authorLabel: UILabel!

    @IBOutlet weak var bodyLabel: UILabel!

    @IBOutlet weak var thumbnailImageView: UIImageView!

    // MARK: - Initialize

    override func awakeFromNib() {
        super.awakeFromNib()

        thumbnailImageView.layer.cornerRadius = 5
        thumbnailImageView.layer.masksToBounds = true
    }

}
