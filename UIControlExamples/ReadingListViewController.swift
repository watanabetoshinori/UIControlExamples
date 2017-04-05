//
//  ReadingListViewController.swift
//  UIControlExamples
//
//  Created by Watanabe Toshinori on 4/5/17.
//  Copyright © 2017 Watanabe Toshinori. All rights reserved.
//

import UIKit

class ReadingListViewController: UITableViewController {

    private struct Article {
        let title: String

        let author: String

        let body: String

        let thumbnail: UIImage?
    }

    private let articles = [
        Article(title: "Apple、iPhone 7とiPhone 7 Plus (PRODUCT)RED™ Special Editionを発表", author: "apple.com", body: "美しい仕上げの新しいiPhoneを購入することで「世界エイズ・結核・マラリア対策基金（グローバルファンド）」への貢献が可能に", thumbnail: #imageLiteral(resourceName: "ReadingList_red")),
        Article(title: "新しい9.7インチiPad、美しいRetinaディスプレイと圧倒的な性能を搭載", author: "apple.com", body: "iPadの楽しさとパワーをすべて詰め込んで、新価格37,800円から", thumbnail: #imageLiteral(resourceName: "ReadingList_iPad")),
        Article(title: "Apple、iOSで楽しみながら表現力豊かなビデオを作れる新しい方法、Clipsを発表", author: "apple.com", body: "革新的な方法で驚くほど簡単にアニメーションの作品を作ることができる、iPhoneとiPadのための新しいアプリケーション", thumbnail: nil),
        Article(title: "Swift Playgrounds、さらに5か国語に対応", author: "apple.com", body: "Swiftを使ったプログラミングを学べるAppleの人気アプリケーションが新たに日本語、中国語（簡体字）、フランス語、ドイツ語そしてラテンアメリカのスペイン語に対応。", thumbnail: nil),
        Article(title: "Apple Parkを社員向けに4月オープン", author: "apple.com", body: "併設シアターはスティーブ・ジョブズの名を冠する", thumbnail: #imageLiteral(resourceName: "ReadingList_ApplePark")),
        Article(title: "Appleの世界開発者会議、WWDC、かつての開催地サンノゼで2017年6月5日～9日にかけて開催", author: "apple.com", body: "2017年2月16日、カリフォルニア州クパティーノ、Apple®は本日、28回目となるワールドワイドデベロッパカンファレンス（世界開発者会議、以下WWDC）を、サンノゼのマッケナリー・コンベンションセンターで開催することを発表しました。", thumbnail: nil),
    ]

    // MARK: - View lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - TableView datasource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! ReadingListCell

        let article = articles[indexPath.row]

        cell.titleLabel.text = article.title
        cell.authorLabel.text = article.author
        cell.bodyLabel.text = article.body
        cell.thumbnailImageView?.image = article.thumbnail
        cell.thumbnailImageView.isHidden = article.thumbnail == nil

        return cell
    }

}
