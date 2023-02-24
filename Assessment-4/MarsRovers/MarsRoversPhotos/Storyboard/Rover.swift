//
//  Rover.swift
//  MarsRoversPhotos
//
//  Created by Sebastian Guiscardo on 2/24/23.
//

import Foundation

class Rover {
    let imageURL: String
    let roverName: String
    let earthDate: String
    let cameraName: String
    
    init(imageURL: String, roverName: String, earthDate: String, cameraName: String) {
        self.imageURL = imageURL
        self.roverName = roverName
        self.earthDate = earthDate
        self.cameraName = cameraName
    }
}

extension Rover {
    
    enum Keys: String {
        case imageURL = "img_src"
        case roverName = "rover"
        case earthDate = "earth_date"
        case camera = "camera"
        case cameraName = "name"
    }
    
    
    convenience init?(dictionary: [String : Any]) {
        guard let imageURL = dictionary[Keys.imageURL.rawValue] as? String,
              let roverName = dictionary[Keys.roverName.rawValue] as? String,
              let earthDate = dictionary[Keys.earthDate.rawValue] as? String,
              let cameraName = dictionary[Keys.cameraName.rawValue] as? String else {
            print("Failed to initialize a Rover from a dictionary")
            return nil
        }
        self.init(imageURL: imageURL, roverName: roverName, earthDate: earthDate, cameraName: cameraName)
    }
}


//Curiosity
//https://api.nasa.gov/mars-photos/api/v1/rovers/curiosity/photos?earth_date=2020-04-22&api_key=YOUR_API_KEY
//Opportunity
//https://api.nasa.gov/mars-photos/api/v1/rovers/opportunity/photos?earth_date=2020-04-22&api_key=YOUR_API_KEY
//Spirit
//https://api.nasa.gov/mars-photos/api/v1/rovers/spirit/photos?earth_date=2020-04-22&api_key=YOUR_API_KEY


//image
//rover name
//eart day
//camera name
