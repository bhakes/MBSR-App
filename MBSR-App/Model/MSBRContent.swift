//
//  MSBRContent.swift
//  MBSR-App
//
//  Created by Benjamin Hakes on 12/22/18.
//  Copyright © 2018 Benjamin Hakes. All rights reserved.
//

import UIKit

enum ContentType: String { case article, video, book, audio }

class MSBRContent {
    
    // Dictionary of Videos, Articles, and Links
    static let shared = MSBRContent()
    private init() {}
    
    enum InformalPractices: String, CaseIterable {
        case informalWeek1 = "Simple Awareness"
        case informalWeek2 = "Pleasant Events Calendar"
        case informalWeek3 = "Unplesant Events Calendar"
        case informalWeek4 = "STOP: One-Minute Breathing Space"
        case informalWeek5 = "Turning Toward"
        case informalWeek6 = "Communication Calendar"
        case informalWeek7 = "Week 7"
    }
    
    var tableOfContents = [
        "1":
            [
                "title": "Simple Awareness",
                "subtitle": "Introduction to the Body Scan",
            ],
        "2":
            [
                "title": "Attention & The Brian",
                "subtitle": "Introduction to Sitting Meditation",
            ],
        "3":
            [
                "title": "Dealing with Thoughts",
                "subtitle": "Introduction to Yoga",
        ],
        "4":
            [
                "title": "Stress: Responding vs. Reacting",
                "subtitle": "STOP: The One-Minute Breathing Space",
        ],
        "5":
            [
                "title": "Dealing with Difficult Emotions or Physical Pain",
                "subtitle": "Turning toward...",
        ],
        "6":
            [
                "title": "Mindfulness and Communication",
                "subtitle": "Lake & Mountain Meditations",
        ],
        "7":
            [
                "title": "Mindfulness and Compassion",
                "subtitle": "Lovingkindness Meditation",
        ],
        "8":
            [
                "title": "Conclusion",
                "subtitle": "Developing a practice of your own",
        ],
    ]
    
    
    var practices: [Practice] = [
        
        // Raisin Meditation
        Practice(title: "Raisin Meditation",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "5E335E") ?? .clear,
                 contentType: .video,
                 publisher: "Dave Potter",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 12,
                 url: "https://www.youtube.com/watch?v=_CZEEYMXr8Q&index=4&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg"),
        
        // The Body Scan Meditation
        Practice(title: "The Body Scan Meditation",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "33495E") ?? .clear,
                 contentType: .article,
                 publisher: nil,
                 author: "Jon Kabat-Zinn",
                 estReadingTime: 13,
                 timeLength: nil,
                 url: "https://palousemindfulness.com/docs/bodyscan.pdf"),
        
        // Sitting Meditation
        Practice(title: "Sitting Meditation",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "3F88C5") ?? .clear,
                 contentType: .article,
                 publisher: nil,
                 author: "Jon Kabat-Zinn",
                 estReadingTime: 13,
                 timeLength: nil,
                 url: "https://palousemindfulness.com/docs/sittingmeditation.pdf"),
        
        // Mindful Yoga 1
        Practice(title: "Mindful Yoga 1",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "A6C63B") ?? .clear,
                 contentType: .video,
                 publisher: "Lynn Rossy",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 37,
                 url: "https://www.youtube.com/watch?v=Teo0f1ab1PY&index=3&list=PLbiVpU59JkVaFMGi0A8Im_hfSh-SWsFwg"),
        
        // Mindful Yoga 2
        Practice(title: "Mindful Yoga 2",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "335E40") ?? .clear,
                 contentType: .video,
                 publisher: "Lynn Rossy",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 36,
                 url: "https://www.youtube.com/watch?v=gmdUOia58rY&index=4&list=PLbiVpU59JkVaFMGi0A8Im_hfSh-SWsFwg"),
        
        // Turning Towards... Physical
        Practice(title: "Turning Towards... Physical",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "E84D3C") ?? .clear,
                 contentType: .video,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 23,
                 url: "https://www.youtube.com/watch?v=qMhkN-yVfQc"),
        
        // Turning Towards... Emotions
        Practice(title: "Turning Towards... Emotions",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "FFCC02") ?? .clear,
                 contentType: .video,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 24,
                 url: "https://www.youtube.com/watch?v=AP8Pwvkww24"),

        // Mountain Meditation
        Practice(title: "Mountain Meditation",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "5E4433") ?? .clear,
                 contentType: .video,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 20,
                 url: "https://www.youtube.com/watch?v=9SwnJ6kqpa0&index=6&list=PLbiVpU59JkVaFMGi0A8Im_hfSh-SWsFwg"),

        // Lake Meditation
        Practice(title: "Lake Meditation",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "3A7082") ?? .clear,
                 contentType: .video,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 20,
                 url: "https://www.youtube.com/watch?v=3DoIOHb0unE&index=7&list=PLbiVpU59JkVaFMGi0A8Im_hfSh-SWsFwg"),
        
        // Soften, Soothe, Allow Meditation
        Practice(title: "Soften, Soothe, Allow Meditation",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "A6C63B") ?? .clear,
                 contentType: .audio,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 15,
                 url: "https://palousemindfulness.com/disks/soften-soothe-allow.mp3"),
        
        // Rain Meditation
        Practice(title: "Rain Meditation",
                 subtitle: nil,
                 contentColor: UIColor(hexString: "B8C9F2") ?? .clear,
                 contentType: .audio,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 15,
                 url: "https://palousemindfulness.com/disks/RAIN.mp3"),
        
        // 30-Minute Silent Meditation
        Practice(title: "30-Minute Silent Meditation",
                 subtitle: nil,
                 contentColor: .darkGray,
                 contentType: .audio,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 30,
                 url: "https://palousemindfulness.com/meditations/silent30min.html"),
        
        // 20-Minute Silent Meditation
        Practice(title: "20-Minute Silent Meditation",
                 subtitle: nil,
                 contentColor: .gray,
                 contentType: .audio,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 20,
                 url: "https://palousemindfulness.com/meditations/silent20min.html"),
        
        // 15-Minute Silent Meditation
        Practice(title: "15-Minute Silent Meditation",
                 subtitle: nil,
                 contentColor: .lightGray,
                 contentType: .audio,
                 publisher: "Palouse Mindfulness",
                 author: nil,
                 estReadingTime: nil,
                 timeLength: 15,
                 url: "https://palousemindfulness.com/meditations/silent15min.html")
    ]
    
    
    var content =
        [ "1" :
        [
            [
                [
                    "title": "The Power of Mindfulness",
                    "length": 13,
                    "publisher": "Shauna Shapiro",
                    "url": "https://www.youtube.com/watch?v=B49Ls4gl07Y&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg&index=1",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Don't Try to Be Mindful",
                    "length": 12,
                    "publisher": "Daron Larson",
                    "url": "https://www.youtube.com/watch?v=Y_27l2hMYvE&index=2&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Befriending Our Bodies",
                    "length": 4,
                    "publisher": "Jon Kabat-Zinn",
                    "url": "https://www.youtube.com/watch?v=iS53roI_pWE&index=3&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Raisin Meditation",
                    "length": 12,
                    "publisher": "Dave Potter",
                    "url": "https://www.youtube.com/watch?v=_CZEEYMXr8Q&index=4&list=PLbiVpU59JkVbNfFyAG4SrC8NGnC0-D4jg",
                    "type" : "video",
                    "viewed": 0
                ]
                
            ],
            [
                [
                    "title": "The Body Scan Meditation",
                    "estimatedReadingTime": 13,
                    "author": "Jon Kabat-Zinn",
                    "url": "https://palousemindfulness.com/docs/bodyscan.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "7 Myths of Meditation",
                    "estimatedReadingTime": 8,
                    "author": "Deepak Choprah",
                    "url": "https://palousemindfulness.com/docs/seven-myths.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Why We Find It So Hard to Meditate",
                    "estimatedReadingTime": 4,
                    "author": "Mindful Staff",
                    "url": "https://palousemindfulness.com/docs/why-we-find-it-hard.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    
                    "title": "Mouthfuls of Mindfulness",
                    "estimatedReadingTime": 9,
                    "author": "Jan Chozen Bays",
                    "url": "https://palousemindfulness.com/docs/mouthfuls-mindfulness.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "Introduction to Mindful Eating",
                    "estimatedReadingTime": 10,
                    "author": "Michelle DuVal",
                    "url": "http://www.youtube.com/watch?v=6tw93IgfL0U",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "The Mindfulness-Based Easting Solution",
                    "estimatedReadingTime": 15,
                    "author": "Lynn Rossy",
                    "url": "https://palousemindfulness.com/art/LynnRossy-eating-solution.pdf",
                    "type" : "article"
                ],
                [
                    "title": "What Would It Take for You to Be Still?",
                    "estimatedReadingTime": 15,
                    "author": "Catherine Price",
                    "url": "https://palousemindfulness.com/docs/what-would-it-take.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "An Apple as Past, Present, and Future",
                    "estimatedReadingTime": 2,
                    "author": "Susan Kaiser Greenland",
                    "url": "https://www.youtube.com/watch?v=j2uooeprDkE",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Managing Anxiety with Mindfulness",
                    "estimatedReadingTime": 15,
                    "author": "Rachel Green",
                    "url": "https://www.youtube.com/watch?v=aSy9DZAJWIE&index=4&list=PLbiVpU59JkVbFtkacXoByNjHJgGc4AryM",
                    "type" : "video",
                    "viewed": 0
                ]
            ]
        ],
          "2":
        [
            [
                [
                    "title": "The Monkey Business Illusion",
                    "length": 2,
                    "publisher": "Daniel Simons",
                    "url": "https://www.youtube.com/watch?v=ux1cL7tHjlI&list=PLbiVpU59JkValOIEIo2Y65mBopHCjKvBo&index=1",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Mindful Meditation and the Brain",
                    "length": 6,
                    "publisher": "Shauna Shapiro",
                    "url": "https://www.youtube.com/watch?v=R6hybxLidgA&index=2&list=PLbiVpU59JkValOIEIo2Y65mBopHCjKvBo",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Measuring Mindfulness",
                    "length": 7,
                    "publisher": "Judson Brewer",
                    "url": "https://www.youtube.com/watch?v=wp9JD4APjSs&list=PLbiVpU59JkValOIEIo2Y65mBopHCjKvBo&index=3",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Life Right Now",
                    "length": 7,
                    "publisher": "Jon Kabat-Zinn",
                    "url": "https://www.youtube.com/watch?v=VGtJQNqMXBY&index=4&list=PLbiVpU59JkValOIEIo2Y65mBopHCjKvBo",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Coming to Our Senses",
                    "length": 9,
                    "publisher": "Jon Kabat-Zinn",
                    "url": "https://www.youtube.com/watch?v=XNvZkepAiMo&list=PLbiVpU59JkValOIEIo2Y65mBopHCjKvBo&index=5",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "All It Takes Is 10 Mindful Minutes",
                    "length": 10,
                    "publisher": "Andy Puddicombe",
                    "url": "https://www.youtube.com/watch?v=qzR62JJCMBQ&index=6&list=PLbiVpU59JkValOIEIo2Y65mBopHCjKvBo",
                    "type" : "video",
                    "viewed": 0
                ]
                
            ],
            [
                [
                    "title": "Sitting Meditation",
                    "estimatedReadingTime": 13,
                    "author": "Jon Kabat-Zinn",
                    "url": "https://palousemindfulness.com/docs/sittingmeditation.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Joshua Bell Play a $3 Million Violin",
                    "estimatedReadingTime": 8,
                    "author": "Joshua Bell",
                    "url": "https://palousemindfulness.com/docs/joshua-bell.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "How the Brain Rewires Itself",
                    "estimatedReadingTime": 4,
                    "author": "Sharon Begley",
                    "url": "https://palousemindfulness.com/docs/brain-rewires.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    
                    "title": "How Meditation Affects the Gray Matter of the Brain",
                    "estimatedReadingTime": 9,
                    "author": "David R. Hamilton, Ph.D.",
                    "url": "https://palousemindfulness.com/docs/mouthfuls-mindfulness.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "Altered Traits",
                    "estimatedReadingTime": 15,
                    "author": "Daniel Goldman and Richard Davidson",
                    "url": "https://www.amazon.com/Altered-Traits-Science-Reveals-Meditation/dp/0399184384",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "Why a Neuroscientist Would Study Meditation",
                    "estimatedReadingTime": 10,
                    "author": "Willoughby Britton",
                    "url": "https://www.youtube.com/watch?v=ioCY_HKBFOc",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Neuroscientist Richard Davidson's Wake-Up Call",
                    "estimatedReadingTime": 5,
                    "author": "article/video by Huffington Post",
                    "url": "http://www.huffingtonpost.com/entry/the-wake-up-call-that-transformed-neuroscientist-richard-davidsons-life_us_571fcbc4e4b01a5ebde3c0a7",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "How Meditation Can Reshape Our Brains",
                    "estimatedReadingTime": 8,
                    "author": "Sara Lazar",
                    "url": "https://www.youtube.com/watch?v=m8rRzTtP7Tc",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Mastering Your Own Mind",
                    "estimatedReadingTime": 10,
                    "author": "Katherine Ellison",
                    "url": "https://palousemindfulness.com/docs/mastering.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Positive Emotions and Mindfulness",
                    "estimatedReadingTime": 10,
                    "author": "Rachel Green",
                    "url": "https://www.youtube.com/watch?feature=player_embedded&amp;v=4Gcohaq8Uhs#!",
                    "type" : "video",
                    "viewed": 0
                ]
            ]
        ],
          "3":
        [
            [
                [
                    "title": "Non-Striving",
                    "length": 3,
                    "publisher": "Jon Kabat-Zinn",
                    "url": "https://www.youtube.com/watch?v=Ye3xwfECuYc&index=1&list=PLbiVpU59JkVZzL8TqgU6Uz_HxhnMqpzZv",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Attention Intention, Attitude",
                    "length": 16,
                    "publisher": "Shauna Shapiro",
                    "url": "https://www.youtube.com/watch?v=KsXNUpZnyg4&list=PLbiVpU59JkVZzL8TqgU6Uz_HxhnMqpzZv&index=2",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Your Thoughts are Bubbles",
                    "length": 5,
                    "publisher": "Jon Kabat-Zinn",
                    "url": "https://www.youtube.com/watch?v=w8Nsa45d0XE&index=3&list=PLbiVpU59JkVZzL8TqgU6Uz_HxhnMqpzZv",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Dealing with Thoughts (in life and in meditation)",
                    "length": 20,
                    "publisher": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=9kNXhJf6jOM&index=4&list=PLbiVpU59JkVZzL8TqgU6Uz_HxhnMqpzZv",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Samurai and the Fly",
                    "length": 3,
                    "publisher": "Hanjin Song",
                    "url": "https://www.youtube.com/watch?v=R5-HNXxc5kk&list=PLbiVpU59JkVZzL8TqgU6Uz_HxhnMqpzZv&index=5",
                    "type" : "video",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "Mindful Yoga",
                    "estimatedReadingTime": 13,
                    "author": "Jon Kabat-Zinn",
                    "url": "https://palousemindfulness.com/docs/yoga.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Meditation - It's Not What You Think",
                    "estimatedReadingTime": 8,
                    "author": "Jon Kabat-Zinn",
                    "url": "https://palousemindfulness.com/docs/JKZ_thinking.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "I Hadn't THought of That",
                    "estimatedReadingTime": 4,
                    "author": "Wes Nisker",
                    "url": "https://palousemindfulness.com/docs/nisker-thoughts.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Your Mind: Friend or Foe?",
                    "estimatedReadingTime": 9,
                    "author": "Jack Kornfield",
                    "url": "https://palousemindfulness.com/docs/your-mind-friend-or-foe.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Reality Below Thoughts",
                    "estimatedReadingTime": 10,
                    "author": "Jack Kornfield",
                    "url": "https://palousemindfulness.com/docs/reality-below-thoughts.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "Thoughts: \"Real, but not True\"",
                    "estimatedReadingTime": 26,
                    "author": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=iCrCmqeWHp4",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Surrender to the Monkeys",
                    "estimatedReadingTime": 4,
                    "author": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=H8yoWnEmTO8",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Freedom from Repetitive Thoughts",
                    "estimatedReadingTime": 8,
                    "author": "Jack Kornfield",
                    "url": "https://jackkornfield.com/expand-field-attention/",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "\"Letting Go\" in Meditation",
                    "estimatedReadingTime": 15,
                    "author": "Peter Russell and Shauna Shapiro",
                    "url": "https://palousemindfulness.com/docs/autobio_5chapters.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Autobiography in Five Short Chapters",
                    "estimatedReadingTime": 5,
                    "author": "Portia Nelson",
                    "url": "https://palousemindfulness.com/docs/autobio_5chapters.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Transform Your Mind, Change Your Brain",
                    "estimatedReadingTime": 65,
                    "author": "Richard Davison",
                    "url": "https://www.youtube.com/watch?v=7tRdDqXgsJ0",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Mindfulness, the Mind, and Addictive Behavior",
                    "estimatedReadingTime": 20,
                    "author": "Judson Brewer",
                    "url": "https://www.youtube.com/watch?v=7a9sWI0vJzc",
                    "type" : "video",
                    "viewed": 0
                ]
            ]
        ],
      "4":
        [
            [
                [
                    "title": "Stress - Portrait of a Killer",
                    "length": 27,
                    "publisher": "National Geographic Special with Robert Sapolsky",
                    "url": "https://www.youtube.com/watch?v=a58RrLUs4YE&amp;index=2&amp;list=PLbiVpU59JkVZeQPQ1u5mS8U1c0V7J5OJU",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "How To Make Stress Your Friend",
                    "length": 14,
                    "publisher": "Kelly McGonigal",
                    "url": "https://www.youtube.com/watch?v=RcGyVTAoXEU&index=3&list=PLbiVpU59JkVZeQPQ1u5mS8U1c0V7J5OJU",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "STOP: A Short Mindfulness Practice",
                    "length": 4,
                    "publisher": "Susan Bauer-Wu",
                    "url": "https://www.youtube.com/watch?v=WaszqhPCWX0&amp;index=4&amp;list=PLbiVpU59JkVZeQPQ1u5mS8U1c0V7J5OJU",
                    "type" : "video",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "What is Stress?",
                    "estimatedReadingTime": 10,
                    "author": "Palouse Mindfulness",
                    "url": "https://palousemindfulness.com/docs/what-is-stress.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Anatomy of Fear",
                    "estimatedReadingTime": 2,
                    "author": "Discovery Magazine",
                    "url": "https://palousemindfulness.com/docs/anatomy-of-fear.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Understanding the Stress Response",
                    "estimatedReadingTime": 8,
                    "author": "Harvard Health Publications",
                    "url": "https://palousemindfulness.com/docs/understanding-stress.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Harnessing the Upsides of Stress",
                    "estimatedReadingTime": 9,
                    "author": "Harvard Health Publications",
                    "url": "https://palousemindfulness.com/docs/harnessing-the-upsides.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "One-Minute Breathing Space",
                    "estimatedReadingTime": 10,
                    "author": "Tara Brach",
                    "url": "https://palousemindfulness.com/docs/STOP.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Magic Quarter Second",
                    "estimatedReadingTime": 10,
                    "author": "Tara Brach",
                    "url": "https://palousemindfulness.com/docs/magic-quarter-second.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "The Anatomy of Anxiety",
                    "estimatedReadingTime": 7,
                    "author": "Tara Brach",
                    "url": "https://palousemindfulness.com/docs/anatomy-of-anxiety.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "When Is Stress Good for You",
                    "estimatedReadingTime": 8,
                    "author": "Bruce McEwen",
                    "url": "https://aeon.co/essays/how-stress-works-in-the-human-body-to-make-or-break-us",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Psychology of Stress",
                    "estimatedReadingTime": 3,
                    "author": "Robert Sapolsky",
                    "url": "https://www.youtube.com/watch?v=r8-jOAsvj2c&amp;index=1&amp;list=PLbiVpU59JkVZeQPQ1u5mS8U1c0V7J5OJU",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Why Zebras Don't Get Ulcers",
                    "estimatedReadingTime": 65,
                    "author": "Robert Sapolsky",
                    "url": "https://www.amazon.com/Why-Zebras-Dont-Ulcers-Third/dp/0805073698",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "Leaves Falling Gently",
                    "estimatedReadingTime": 65,
                    "author": "Susan Bauer",
                    "url": "https://www.amazon.com/Leaves-Falling-Gently-Life-Limiting-Connectedness/dp/1572249994",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "The Mindful Approach to Butterfiles in Your Stomach",
                    "estimatedReadingTime": 10,
                    "author": "Jennifer Wolkin",
                    "url": "http://www.mindful.org/mindful-approach-real-butterflies-stomach/",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Other Brain Also Deals with Many Woes",
                    "estimatedReadingTime": 10,
                    "author": "Harriet Brown",
                    "url": "https://palousemindfulness.com/docs/otherbrain.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "How Does the Vagus Nerve Convey Gut Instincts to the Brain?",
                    "estimatedReadingTime": 10,
                    "author": "Psychology Today",
                    "url": "https://www.psychologytoday.com/blog/the-athletes-way/201405/how-does-the-vagus-nerve-convey-gut-instincts-the-brain",
                    "type" : "article",
                    "viewed": 0
                ]
            ]
        ],
            "5":
        [
            [
                [
                    "title": "Turning Towards Difficulty",
                    "length": 10,
                    "publisher": "Vidyamala Burch",
                    "url": "https://www.youtube.com/watch?v=8aAATYSvNjc&index=1&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "The Fist Exercise",
                    "length": 2,
                    "publisher": "Vidyamala Burch",
                    "url": "https://www.youtube.com/watch?v=Ez9s124sL8I&index=3&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "The Gift and Power of Emotional Courage",
                    "length": 16,
                    "publisher": "Susan David",
                    "url": "https://www.youtube.com/watch?v=NDQ1Mi5I4rg&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO&index=4",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Mindfulness and Painful Emotions",
                    "length": 2,
                    "publisher": "Steven Hayes",
                    "url": "https://www.youtube.com/watch?v=SHnULfYKXcI&index=5&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Pain x Resistance = Suffering",
                    "length": 8,
                    "publisher": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=O8-exWpcngc&index=6&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "The Three Components of Self-Compassion",
                    "length": 6,
                    "publisher": "Kristin Neff",
                    "url": "https://www.youtube.com/watch?v=w3aba1ok5lE&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO&index=8",
                    "type" : "video",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "Responding to Emotional or Physical Pain",
                    "estimatedReadingTime": 10,
                    "author": "Dave Potter",
                    "url": "https://palousemindfulness.com/docs/responding-to-difficulty.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "\"Turning Towards\" Diffcult Emotions",
                    "estimatedReadingTime": 8,
                    "author": "Palouse Mindfulness",
                    "url": "https://palousemindfulness.com/docs/anatomy-of-fear.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "\"Turning Towards\" Physical Pain",
                    "estimatedReadingTime": 8,
                    "author": "Palouse Mindfulness",
                    "url": "https://palousemindfulness.com/docs/turning-toward-physical.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Five-Step Model",
                    "estimatedReadingTime": 9,
                    "author": "Vidyamala Burch",
                    "url": "https://palousemindfulness.com/docs/vidyamala-5steps.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Radical Acceptance",
                    "estimatedReadingTime": 10,
                    "author": "Tara Brach",
                    "url": "https://palousemindfulness.com/docs/radical-acceptance.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "\"Inner Listening\" - An Introduction to Focusing",
                    "estimatedReadingTime": 7,
                    "author": "Ann Weiser-Cornell",
                    "url": "https://palousemindfulness.com/graduates/2016-01.html",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Guided Reflection on Inhabiting this Body",
                    "estimatedReadingTime": 13,
                    "author": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=DaglXE4kpBo",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Lower Back Ache?",
                    "estimatedReadingTime": 5,
                    "author": "New York Times",
                    "url": "https://mobile.nytimes.com/2017/02/13/health/lower-back-pain-surgery-guidelines.html",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Strange Case of Chronic Back Pain",
                    "estimatedReadingTime": 5,
                    "author": "Ron Siegel",
                    "url": "https://palousemindfulness.com/docs/siegel-backpain.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Back Sense: Halting the Cycle of Chronic Back Pain",
                    "estimatedReadingTime": 65,
                    "author": "Ron Siegel",
                    "url": "https://www.amazon.com/Back-Sense-Revolutionary-Approach-Halting/dp/0767905814",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "Working with Pain - Mindfulness Strategies [Article, Video]",
                    "estimatedReadingTime": 10,
                    "author": "Tara Brach",
                    "url": "https://www.tarabrach.com/pain/",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "How To Be Sick",
                    "estimatedReadingTime": 10,
                    "author": "Toni Bernhard",
                    "url": "https://www.amazon.com/How-Sick-Buddhist-Inspired-Chronically-Caregivers/dp/0861716264",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "Dealing with Panic Attacks",
                    "estimatedReadingTime": 3,
                    "author": "Steven Hayes",
                    "url": "https://www.youtube.com/watch?v=Kr7mhCCiSoY&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO&index=6",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Mindfulness and Physical Pain",
                    "estimatedReadingTime": 4,
                    "author": "Kelly McGonigal",
                    "url": "https://www.youtube.com/watch?v=mCrsJIRtiqI&index=7&list=PLbiVpU59JkVYtEL6-21TOfe3IELNMmOhO",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Buddhism's Pain Relief",
                    "estimatedReadingTime": 10,
                    "author": "Rick Heller",
                    "url": "https://palousemindfulness.com/docs/buddhism-pain.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Emotional Agility: Get Unstuck, Embrace Change",
                    "estimatedReadingTime": 65,
                    "author": "Susan David",
                    "url": "https://www.amazon.com/Emotional-Agility-Unstuck-Embrace-Change-ebook/dp/B016JPTPDW",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "Mindfulness-Based Pain Management",
                    "estimatedReadingTime": 21,
                    "author": "Vidyamala Burch",
                    "url": "https://www.youtube.com/watch?v=N10_dcIZp2k&index=2&list=PLbiVpU59JkVYO8bBU09fKOIOd9kUJMG4f",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Living Well With Pain & Illness",
                    "estimatedReadingTime": 65,
                    "author": "Vidyamala Burch",
                    "url": "http://www.amazon.com/Living-Well-Pain-Illness-Suffering/dp/1591797470",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "YOU Are Not Your Pain",
                    "estimatedReadingTime": 65,
                    "author": "Vidyamala Burch",
                    "url": "https://www.amazon.com/You-Are-Your-Pain-Well-Being/dp/125005267X",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "Vidyamala Burch interview",
                    "estimatedReadingTime": 58,
                    "author": "Vidyamala Burch",
                    "url": "https://www.youtube.com/watch?v=3TUxs8HOCRo",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Choosing to Live Well with Pain & Illness [Audio]",
                    "estimatedReadingTime": 39,
                    "author": "Vidyamala Burch",
                    "url": "https://palousemindfulness.com/meditations/vidyamala-choosing.html",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Choosing to Live Well with Pain & Illness [Transcript]",
                    "estimatedReadingTime": 39,
                    "author": "Vidyamala Burch",
                    "url": "https://palousemindfulness.com/docs/vidyamala-choosing.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ]
        ],
            "6":
        [
            [
                [
                    "title": "The Art of Being Heard",
                    "length": 16,
                    "publisher": "Susan Piver",
                    "url": "https://www.youtube.com/watch?v=VmupIGDNjvk&amp;index=1&amp;list=PLbiVpU59JkVaxox70z7TUv9eyriJ0galL",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "The Sacred Art of Listening",
                    "length": 19,
                    "publisher": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=39eFKcIi-JY&amp;list=PLbiVpU59JkVaxox70z7TUv9eyriJ0galL&amp;index=2",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Awakening Through Conflict",
                    "length": 9,
                    "publisher": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=KCPYNfLWXxE&amp;list=PLbiVpU59JkVaxox70z7TUv9eyriJ0galL&amp;index=3",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Blame",
                    "length": 3,
                    "publisher": "Brene Brown",
                    "url": "https://www.youtube.com/watch?v=TZpVTWiFlGw&t=0s&list=PLbiVpU59JkVaxox70z7TUv9eyriJ0galL&index=4",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Empathy",
                    "length": 3,
                    "publisher": "Brene Brown",
                    "url": "https://www.youtube.com/watch?v=1Evwgu369Jw&list=PLbiVpU59JkVaxox70z7TUv9eyriJ0galL&index=5",
                    "type" : "video",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "The Sacred Art of Listening",
                    "estimatedReadingTime": 10,
                    "author": "Tara Brach",
                    "url": "https://palousemindfulness.com/docs/sacred-art-of-listening.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Most Frequently Asked Question",
                    "estimatedReadingTime": 8,
                    "author": "Sylvia Boorstein",
                    "url": "https://palousemindfulness.com/docs/most-frequently-asked-Q.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Answer to Anger",
                    "estimatedReadingTime": 8,
                    "author": "Pem Chodron",
                    "url": "https://palousemindfulness.com/docs/anger-chodron.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Conflict Management Styles",
                    "estimatedReadingTime": 9,
                    "author": "Palouse Mindfulness",
                    "url": "https://palousemindfulness.com/docs/conflict_styles.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "The Heart of Nonviolent Communication (NVC)",
                    "estimatedReadingTime": 10,
                    "author": "Marshall Rosenberg",
                    "url": "https://palousemindfulness.com/docs/non-violent-communication.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ],
            [
                [
                    "title": "Deep Listening",
                    "estimatedReadingTime": 3,
                    "author": "Frank Ostaseski",
                    "url": "https://www.youtube.com/watch?v=OChqAX7hnTc",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Listening with Ears of the Heart",
                    "estimatedReadingTime": 12,
                    "author": "Tara Brach",
                    "url": "https://www.youtube.com/watch?v=gFaXz9M0vrQ",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Can We Talk? (3 mindfulness practices)",
                    "estimatedReadingTime": 12,
                    "author": "Lili Powell (Mindful Magazine)",
                    "url": "http://www.mindful.org/can-we-talk/",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "What Really Makes Us Happy",
                    "estimatedReadingTime": 21,
                    "author": "Robert Waldinger",
                    "url": "https://www.youtube.com/watch?v=8KkKuTCFvzI",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Non-Violent Communication",
                    "estimatedReadingTime": 6,
                    "author": "Marshall Rosenberg",
                    "url": "https://www.youtube.com/watch?v=ImaehABEZaY",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Non-Violent Communication interview",
                    "estimatedReadingTime": 21,
                    "author": "Marshall Rosenberg",
                    "url": "https://www.youtube.com/watch?v=SQe_5Ll9dQE",
                    "type" : "video",
                    "viewed": 0
                ],
                [
                    "title": "Non-Violent Communication: A Language of Life",
                    "estimatedReadingTime": 65,
                    "author": "Marshall Rosenberg",
                    "url": "http://www.amazon.com/Nonviolent-Communication-Language-Marshall-Rosenberg/dp/1892005034",
                    "type" : "book",
                    "viewed": 0
                ],
                [
                    "title": "Intimate Relationship as a Spiritual Crucible",
                    "estimatedReadingTime": 15,
                    "author": "John Welwood",
                    "url": "https://www.lionsroar.com/intimate-relationship-as-a-spiritual-crucible/",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "Tuning In: Tips on how to be a good listener",
                    "estimatedReadingTime": 10,
                    "author": "David Rome",
                    "url": "http://www.mindful.org/tuning-in/",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "E-Mail Is Easy to Write (and to Misread)",
                    "estimatedReadingTime": 10,
                    "author": "David Goleman",
                    "url": "https://palousemindfulness.com/docs/email_goleman.pdf",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "A 4-Step Guide to Ranting Productively",
                    "estimatedReadingTime": 15,
                    "author": "Carl Richards",
                    "url": "https://www.nytimes.com/2018/05/22/your-money/how-to-rant-productively.html",
                    "type" : "article",
                    "viewed": 0
                ],
                [
                    "title": "AH, FOWL - The Anger Process",
                    "estimatedReadingTime": 11,
                    "author": "adapted from Barbara De Angelis' \"Love Letters\"",
                    "url": "https://palousemindfulness.com/docs/AHFOWL.pdf",
                    "type" : "article",
                    "viewed": 0
                ]
            ]
        ],
            "7":
                [
                    [
                        [
                            "title": "The Evolutionary Roots of Compassion",
                            "length": 4,
                            "publisher": "Dacher Keltner",
                            "url": "https://www.youtube.com/watch?v=VmupIGDNjvk&amp;index=1&amp;list=PLbiVpU59JkVaxox70z7TUv9eyriJ0galL",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Cultivating Altruism",
                            "length": 18,
                            "publisher": "Matthieu Ricard",
                            "url": "https://www.youtube.com/watch?v=I_eGPlZX4F4&index=2&list=PLbiVpU59JkVYF_BAo745jYWXM4k-0oxln",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "How Mindfulness Cultivates Compassion",
                            "length": 13,
                            "publisher": "Shauna Shapiro",
                            "url": "https://www.youtube.com/watch?v=e94aKm2ShjQ&index=3&list=PLbiVpU59JkVYF_BAo745jYWXM4k-0oxln",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Overcoming Objections to Self-Compassion",
                            "length": 12,
                            "publisher": "Kristin Neff",
                            "url": "https://www.youtube.com/watch?v=lB2wGJ_RmdE&index=4&list=PLbiVpU59JkVYF_BAo745jYWXM4k-0oxln",
                            "type" : "video",
                            "viewed": 0
                        ]
                    ],
                    [
                        [
                            "title": "Survival of the Kindest",
                            "estimatedReadingTime": 10,
                            "author": "Paul Ekman",
                            "url": "https://palousemindfulness.com/docs/survival-ekman.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "Does Mindfulness Make You More Compassionate?",
                            "estimatedReadingTime": 8,
                            "author": "Shauna Shapiro",
                            "url": "https://palousemindfulness.com/docs/shapiro-compassion.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "Self-Compassion",
                            "estimatedReadingTime": 8,
                            "author": "Emma Seppala",
                            "url": "https://palousemindfulness.com/docs/Self-Compassion.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "The Five Myths of Self-Compassion",
                            "estimatedReadingTime": 9,
                            "author": "Kristin Neff",
                            "url": "https://palousemindfulness.com/docs/five-myths-of-self-compassion.pdf",
                            "type" : "article",
                            "viewed": 0
                        ]
                    ],
                    [
                        [
                            "title": "Widening the Circles of Compassion",
                            "estimatedReadingTime": 3,
                            "author": "Tara Brach",
                            "url": "https://www.youtube.com/watch?v=dDmou9n1dl8",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Compassionate Ethics in Difficult Times",
                            "estimatedReadingTime": 11,
                            "author": "Dalai Lama",
                            "url": "https://www.youtube.com/watch?v=qRWLzP48n84",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Compassion and Mindfulness",
                            "estimatedReadingTime": 5,
                            "author": "Jon Kabat-Zinn",
                            "url": "https://www.youtube.com/watch?v=3py0z6LlJ3w&index=4&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "The Mindful Path to Self-Compassion",
                            "estimatedReadingTime": 65,
                            "author": "Christopher Germer",
                            "url": "http://www.amazon.com/Mindful-Path-Self-Compassion-Yourself-Destructive/dp/1593859759",
                            "type" : "book",
                            "viewed": 0
                        ],
                        [
                            "title": "First, Forgive Yourself",
                            "estimatedReadingTime": 6,
                            "author": "Marshall Rosenberg",
                            "url": "https://palousemindfulness.com/docs/first-forgive-yourself.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "The Practice of Forgiveness",
                            "estimatedReadingTime":10,
                            "author": "Jack Kornfield",
                            "url": "https://jackkornfield.com/the-practice-of-forgiveness/",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "Universal Compassion",
                            "estimatedReadingTime": 10,
                            "author": "Sylvia Boorstein and Sharon Salzberg",
                            "url": "https://www.youtube.com/watch?v=rX1QQGhe6HM",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Unconditional Love",
                            "estimatedReadingTime": 29,
                            "author": "Tara Brach",
                            "url": "https://www.youtube.com/watch?v=UUhDHR5CrCE",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Mindfulness and Self-Compassion",
                            "estimatedReadingTime": 21,
                            "author": "Kristin Neff",
                            "url": "https://www.youtube.com/watch?v=-oK8wuPQSiA",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Making Friends with Yourself",
                            "estimatedReadingTime": 10,
                            "author": "based on Pema Chodron's \"4 Keys to Waking Up\"",
                            "url": "https://palousemindfulness.com/docs/friends-with-self.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "Lovingkindness - should we extend it to the jerks of our world?",
                            "estimatedReadingTime": 15,
                            "author": "A. Olendzki",
                            "url": "https://tricycle.org/magazine/no-exceptions-lovingkindness/",
                            "type" : "article",
                            "viewed": 0
                        ]
                    ]
            ],
            "8":
                [
                    [
                        [
                            "title": "Gratitude",
                            "length": 9,
                            "publisher": "Louie Schwartzberg (and voice of David Steindl-Rast)",
                            "url": "https://www.youtube.com/watch?v=gXDMoiEkyuQ&index=1&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "The 365 Grateful Project",
                            "length": 12,
                            "publisher": "Hailey Bartholomew",
                            "url": "https://www.youtube.com/watch?v=zaufonUBjoQ&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0&index=2",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "How My Son Ruined My Life",
                            "length": 7,
                            "publisher": "Selma & James Baraz",
                            "url": "https://www.youtube.com/watch?v=ojF-o_eWp-o&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0&index=3",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Listening as an Act of Love",
                            "length": 7,
                            "publisher": "Jon Kabat-Zinn",
                            "url": "https://www.youtube.com/watch?v=TnJkVIO_adY&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0&index=4",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Grand Central Station",
                            "length": 2,
                            "publisher": "Sharon Salzberg",
                            "url": "https://www.youtube.com/watch?v=tgjHM8ngWrM&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0&index=5",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "The Rabbi's Gift",
                            "length": 6,
                            "publisher": "M. Scott Peck",
                            "url": "https://www.youtube.com/watch?v=3z1pIrV2F6c&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0&index=6",
                            "type" : "video",
                            "viewed": 0
                        ]
                    ],
                    [
                        [
                            "title": "Deepening a Personal Meditation Practice",
                            "estimatedReadingTime": 10,
                            "author": "Jon Kabat-Zinn",
                            "url": "https://static.oprah.com/download/pdfs/presents/2007/spa/spa_meditate_cultivate.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "Suggestions for Daily Practice",
                            "estimatedReadingTime": 8,
                            "author": "Jon Kabat-Zinn",
                            "url": "https://static.oprah.com/download/pdfs/presents/2007/spa/spa_meditate_daily.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "In the Service of Life",
                            "estimatedReadingTime": 8,
                            "author": "Rachel Naomi Remen",
                            "url": "https://palousemindfulness.com/docs/remen-service.pdf",
                            "type" : "article",
                            "viewed": 0
                        ],
                        [
                            "title": "The Rabbi's Gift",
                            "estimatedReadingTime": 9,
                            "author": "M. Scott Peck",
                            "url": "https://palousemindfulness.com/docs/RabbisGift.pdf",
                            "type" : "article",
                            "viewed": 0
                        ]
                    ],
                    [
                        [
                            "title": "Sanctuary",
                            "estimatedReadingTime": 19,
                            "author": "Tara Brach",
                            "url": "https://www.youtube.com/watch?v=ZODoQgx8fMk",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Thanks - How Practicing Gratitude Can Make You Happier",
                            "estimatedReadingTime": 65,
                            "author": "Robert Emmons",
                            "url": "https://www.amazon.com/Thanks-Practicing-Gratitude-Make-Happier/dp/0547085737",
                            "type" : "book",
                            "viewed": 0
                        ],
                        [
                            "title": "The Happy Secret to Better Work",
                            "estimatedReadingTime": 12,
                            "author": "Shawn Achor",
                            "url": "https://www.youtube.com/watch?v=fLJsdqxnZb0",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Happiness",
                            "estimatedReadingTime": 20,
                            "author": "Tara Brach",
                            "url": "https://www.youtube.com/watch?v=igGoRkOFbwM&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0&index=3",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Mindfulness is Not A Crystal Ball",
                            "estimatedReadingTime": 2,
                            "author": "Susan Kaiser Greenland",
                            "url": "https://www.youtube.com/watch?v=kRd19hFrR0c&list=PLbiVpU59JkVYwWcoOV-Bx6ieMKpMlbBb0&index=1",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Blowing Bubbles",
                            "estimatedReadingTime": 2,
                            "author": "Sharon Salzberg",
                            "url": "https://www.youtube.com/watch?v=EPFx0EcEIKY",
                            "type" : "video",
                            "viewed": 0
                        ],
                        [
                            "title": "Layers of Awareness [Diagram]",
                            "estimatedReadingTime": 10,
                            "author": "Palouse Mindfulness",
                            "url": "https://palousemindfulness.com/docs/layers.pdf",
                            "type" : "article",
                            "viewed": 0
                        ]
                    ]
            ]
    ]
    
    func updateViewStatus(week: String, section: Int, row: Int){
        
        guard let weekContent = content["\(week)"] else {fatalError("could not get weekContent")}
        
        if Int(String(describing: weekContent[section][row]["viewed"] ?? String(describing:0))) == 0 {
            setViewStatus(week: week, section: section, row: row, number: 1)
        } else {
            setViewStatus(week: week, section: section, row: row, number: 0)
        }
    }
    
    func setViewStatus(week: String, section: Int, row: Int, number: Int){
        
        content["\(week)"]?[section][row]["viewed"] = number
    }
}


// Practice struct & initializer
struct Practice {
    
    let title: String
    let subtitle: String?
    let icon: UIImage
    let contentColor: UIColor
    let contentType: ContentType
    let publisher: String?
    let author: String?
    let estReadingTime: Int?
    let timeLength: Int?
    let url: URL
    var viewed: Int
    
    init(title: String, subtitle: String? = nil, icon: UIImage = UIImage(), contentColor: UIColor, contentType: ContentType, publisher: String?, author: String?, estReadingTime: Int?, timeLength: Int?, url: String, viewed: Int = 0) {
        
        self.title = title
        self.subtitle = subtitle
        self.icon = icon
        self.contentColor = contentColor
        self.contentType = contentType
        self.publisher = publisher
        self.author = author
        self.estReadingTime = estReadingTime
        self.timeLength = timeLength
        self.url = URL(string: url)!
        self.viewed = viewed
    }
}

