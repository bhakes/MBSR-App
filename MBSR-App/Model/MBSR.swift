//
//  MBSR.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 12/19/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import Foundation

struct Content: Codable {
    let weeks: [WeekOfContent]
    let number: Int
    
}

struct WeekOfContent: Codable {
    
    let videos: [Video]
    let readings: [Reading]
    let articles: [Article]
}

struct Video: Codable {
    
    let title: String
    let length: Int
    let publisher: String
    let url: String
    let type: String
    let viewed: Int
}

struct Reading: Codable {
    
    let title: String
    let author: String
    let estimatedReadingTime: Int
    let url: String
    let type: String
    let viewed: Int
    
}

struct Article: Codable {
    
    let title: String
    let author: String
    let estimatedReadingTime: Int
    let url: String
    let type: String
    let viewed: Int
}






