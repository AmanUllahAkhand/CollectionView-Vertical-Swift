//
//  CountryInformationModel.swift
//  Collectionview vertical
//
//  Created by USER on 08/12/2021.
//

import Foundation
import UIKit

class CountryInformation {
    var FlagImage : UIImage?
    var FlagCountryName : String?
    var countryName : String?
    var capitalName : String?
    var currencyName : String?
    var CountryLanguage : String?
    
    init(FlagPhoto : UIImage?,FlagName : String?,Country : String?,Capital : String?,currency : String?,Language : String?) {
        
        self.FlagImage = FlagPhoto
        self.FlagCountryName = FlagName
        self.countryName = Country
        self.capitalName = Capital
        self.currencyName = currency
        self.CountryLanguage = Language
    }
}

