//
//  MovieVO.swift
//  OpenAPI1126
//
//  Created by 503-12 on 26/11/2018.
//  Copyright © 2018 The. All rights reserved.
//

import Foundation
import UIKit

struct MovieVO {
    var title : String?
    var genreNames : String?
    var linkUrl : String?
    var ratingAverage : Double?
    var thumbnailImage : String?
    
    //썸네일이미지에서 다운로드 받아서 이미지를 저장할 변수
    var image : UIImage?  
}
