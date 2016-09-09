//
//  UIImageView+DownloadImage.swift
//  StoreSearch
//
//  Created by Sebastien Arbogast on 09/09/2016.
//  Copyright © 2016 BusinessTraining. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    func loadImageWithURL(url: NSURL) -> NSURLSessionDownloadTask {
        let session = NSURLSession.sharedSession()
        let downloadTask = session.downloadTaskWithURL(url) { url, response, error in
            if error == nil, let url = url {
                if let data = NSData(contentsOfURL: url), image = UIImage(data: data) {
                    dispatch_async(dispatch_get_main_queue()){
                        self.image = image
                    }
                }
            }
        }
        downloadTask.resume()
        return downloadTask
    }
}