//
//  MSBRContent.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 12/22/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import Foundation

class MSBRContent {
    
    // Dictionary of Videos, Articles, and Links
    static let shared = MSBRContent()
    private init() {}
    
    let content = [
        [
            [
                [
                    "title": "The Power of Mindfulness",
                    "length": 13,
                    "publisher": "Shauna Shapiro",
                    "url": "https://www.youtube.com/watch?v=B49Ls4gl07Y&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg&index=1"
                ],
                [
                    "title": "Don't Try to Be Mindful",
                    "length": 12,
                    "publisher": "Daron Larson",
                    "url": "https://www.youtube.com/watch?v=Y_27l2hMYvE&index=2&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg"
                ],
                [
                    "title": "Befriending Our Bodies",
                    "length": 4,
                    "publisher": "Jon Kabat-Zinn",
                    "url": "https://www.youtube.com/watch?v=iS53roI_pWE&index=3&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg"
                ],
                [
                    "title": "Raisin Meditation",
                    "length": 12,
                    "publisher": "Dave Potter",
                    "url": "https://www.youtube.com/watch?v=_CZEEYMXr8Q&index=4&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg"
                ]
                
            ],
            [
                [
                    "title": "The Body Scan Meditation",
                    "estimatedReadingTime": 13,
                    "author": "Jon Kabat-Zinn",
                    "url": "https://palousemindfulness.com/docs/bodyscan.pdf"
                ],
                [
                    "title": "7 Myths of Meditation",
                    "estimatedReadingTime": 8,
                    "author": "Deepak Choprah",
                    "url": "https://palousemindfulness.com/docs/seven-myths.pdf"
                ],
                [
                    "title": "Why We Find It So Hard to Meditate",
                    "estimatedReadingTime": 4,
                    "author": "Mindful Staff",
                    "url": "https://palousemindfulness.com/docs/why-we-find-it-hard.pdf"
                ],
                [
                    
                    "title": "Mouthfuls of Mindfulness",
                    "estimatedReadingTime": 9,
                    "author": "Jan Chozen Bays",
                    "url": "https://palousemindfulness.com/docs/mouthfuls-mindfulness.pdf"
                ]
            ],
            [
                [
                    "title": "What Would It Take for You to Be Still?",
                    "estimatedReadingTime": 15,
                    "author": "Catherine Price",
                    "url": "https://palousemindfulness.com/docs/what-would-it-take.pdf"
                ]
                
            ]
            
        ]
    ]
}
