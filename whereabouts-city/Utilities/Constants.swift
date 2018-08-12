//
//  Constants.swift
//  whereabouts-city
//
//  Created by Yosra H. Hekal on 12.08.18.
//  Copyright © 2018 Yosra H. Hekal. All rights reserved.
//

import Foundation

let API_KEY = "0c94f54433d142f4e961cf121fdfbf46"

let DROPPABLE_PIN = "droppablePin"
let PHOTO_CELL = "photoCell"

func flickrUrl(forApiKey key: String, withAnnotation annotation: DroppablePin, andNumberOfPhotos number: Int) -> String{
    let url = "https://api.flickr.com/services/rest/?method=flickr.photos.search&api_key=\(API_KEY)&lat=\(annotation.coordinate.latitude)&lon=\(annotation.coordinate.longitude)&radius=1&radius_units=km&per_page=\(number)&format=json&nojsoncallback=1"
    print(url)
    return url
}
