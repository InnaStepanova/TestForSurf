//
//  Resourses.swift
//  TestForSurf
//
//  Created by Лаванда on 11.02.2023.
//

import UIKit

enum Resources {
    
    enum Images {
        static let background = UIImage(named: "background")
    }
    
    enum Text {
        static let mainLabel = "Стажировка в Surf"
        static let descriptionLabel = "Работай над реальными задачами под руководством опытного наставника и получи возможность стать частью команды мечты."
        static let invitation = "Хочешь к нам?"
        static let button = "Оставить заявку"
    }
    
    enum Font {
        static let mainLabel = UIFont(name: "Helvetica-Bold", size: 24)
        static let descriptionLabel = UIFont(name: "SFProDisplay-Regular", size: 14)
        static let button = UIFont(name: "SFProDisplay-Medium", size: 16)
        static let infoButton = UIFont(name: "SFProDisplay-Medium", size: 14)
    }
    
    enum Colors {
        static let mainColor = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        static let descriptionColor = UIColor(red: 0.588, green: 0.584, blue: 0.608, alpha: 1)
        static let button = UIColor(red: 0.192, green: 0.192, blue: 0.192, alpha: 1)
        static let infoButton = UIColor(red: 0.953, green: 0.953, blue: 0.961, alpha: 1)
       
    }
}
