//
//  Facts.swift
//  Wine Facts
//
//  Created by SARVADHI on 11/05/23.
//

import Foundation

struct Facts {
    let id: Int
    let resultDescription: String

    init(id: Int, resultDescription: String) {
        self.id = id
        self.resultDescription = resultDescription
    }
    
}

class FactsHelper {
    
    static func getFacts() -> [Facts] {
        var facts: [Facts] = []
        facts.append(Facts(id: 1, resultDescription: "Wine is one of the oldest alcoholic beverages known to mankind, with a history dating back thousands of years."))
        facts.append(Facts(id: 2, resultDescription: "The color of wine can be red, white, or rosé, depending on the grape variety and winemaking techniques."))
        facts.append(Facts(id: 3, resultDescription: "Red wine gets its color from grape skins during fermentation, while white wine is made from the juice of crushed grapes without the skins."))
        facts.append(Facts(id: 4, resultDescription: "Rosé wine is made by allowing the grape skins to come into contact with the juice for a short period, giving it a pink color."))
        facts.append(Facts(id: 5, resultDescription: "Wine grapes are different from table grapes; they have thicker skins, smaller berries, and seeds."))
        facts.append(Facts(id: 6, resultDescription: "The world's oldest wine-producing region is believed to be in present-day Georgia, dating back over 8,000 years."))
        facts.append(Facts(id: 7, resultDescription: "The alcohol content of most wines ranges from 12% to 15%."))
        facts.append(Facts(id: 8, resultDescription: "The tannins in red wine come from grape skins, seeds, and stems, providing structure and mouthfeel."))
        facts.append(Facts(id: 9, resultDescription: "Fortified wines, such as Port and Sherry, have distilled spirits added to increase their alcohol levels."))
        facts.append(Facts(id: 10, resultDescription: "Wine can be aged in bottles for many years, allowing it to develop more complex flavors and aromas."))
        facts.append(Facts(id: 11, resultDescription: "Wine faults can occur due to factors such as oxidation, cork taint, or bacterial contamination."))
        facts.append(Facts(id: 12, resultDescription: "Wine corks are traditionally made from the bark of cork oak trees."))
        facts.append(Facts(id: 13, resultDescription: "The oldest known bottle of wine dates back to 325 AD and was discovered in a Roman tomb in Germany."))
        facts.append(Facts(id: 14, resultDescription: "Champagne can only be called Champagne if it comes from the Champagne region of France."))
        facts.append(Facts(id: 15, resultDescription: "The color of wine is influenced by the color of the grapes and the length of time the grape skins are left in contact with the juice."))
        facts.append(Facts(id: 16, resultDescription: "Wines can be classified as dry, off-dry, semi-sweet, or sweet depending on their residual sugar content."))
        facts.append(Facts(id: 17, resultDescription: "The world's most expensive bottle of wine was sold for over $500,000 at an auction in Geneva, Switzerland."))
        facts.append(Facts(id: 18, resultDescription: "Wine can be aged for many years, and the longer it is aged, the more complex and flavorful it becomes."))
        facts.append(Facts(id: 19, resultDescription: "Wine is a versatile beverage that can be enjoyed on its own or paired with food."))
        facts.append(Facts(id: 20, resultDescription: "The world's largest wine producer is France, followed by Italy, Spain, and the United States."))
        facts.append(Facts(id: 21, resultDescription: "Wine has been shown to have a number of health benefits, including reducing the risk of heart disease, stroke, and Alzheimer's disease."))
        facts.append(Facts(id: 22, resultDescription: "The first American wine was produced in California in 1769."))
        facts.append(Facts(id: 23, resultDescription: "The most expensive bottle of wine ever sold was a 1787 Château Lafite Rothschild, which sold for $1.5 million in 2010."))
        facts.append(Facts(id: 24, resultDescription: "Wine can be used in cooking to add flavor to sauces, stews, and other dishes."))
        facts.append(Facts(id: 25, resultDescription: "Wine is a symbol of love, romance, and celebration."))
        facts.append(Facts(id: 26, resultDescription: "Sparkling wine is made by adding carbon dioxide to wine. The carbon dioxide gives the wine its bubbles. Sparkling wine can be made from either red or white grapes."))
        facts.append(Facts(id: 27, resultDescription: "Fortified wine is made by adding brandy to wine, which increases the alcohol content. Fortified wines are typically sweet, and they have a higher alcohol content than regular wine. Some popular fortified wines include port, sherry, and Madeira."))
        facts.append(Facts(id: 28, resultDescription: "The word \"vintage\" refers to the year the grapes were harvested."))
        facts.append(Facts(id: 29, resultDescription: "Zinfandel is often associated with California and is known for its bold flavors."))
        facts.append(Facts(id: 30, resultDescription: "Pinot Grigio is the most widely planted white grape variety in Italy."))
        facts.append(Facts(id: 31, resultDescription: "Prosecco is a sparkling wine from the Veneto region of Italy."))
//        facts.append(Facts(id: 32, resultDescription: ""))
//        facts.append(Facts(id: 33, resultDescription: ""))
//        facts.append(Facts(id: 34, resultDescription: ""))
//        facts.append(Facts(id: 35, resultDescription: ""))
//        facts.append(Facts(id: 36, resultDescription: ""))
//        facts.append(Facts(id: 37, resultDescription: ""))
//        facts.append(Facts(id: 38, resultDescription: ""))
//        facts.append(Facts(id: 39, resultDescription: ""))
//        facts.append(Facts(id: 40, resultDescription: ""))
//        facts.append(Facts(id: 41, resultDescription: ""))
//        facts.append(Facts(id: 42, resultDescription: ""))
//        facts.append(Facts(id: 43, resultDescription: ""))
//        facts.append(Facts(id: 44, resultDescription: ""))
//        facts.append(Facts(id: 45, resultDescription: ""))
//        facts.append(Facts(id: 46, resultDescription: ""))
//        facts.append(Facts(id: 47, resultDescription: ""))
//        facts.append(Facts(id: 48, resultDescription: ""))
//        facts.append(Facts(id: 49, resultDescription: ""))
//        facts.append(Facts(id: 50, resultDescription: ""))
//        facts.append(Facts(id: 51, resultDescription: ""))
//        facts.append(Facts(id: 52, resultDescription: ""))
//        facts.append(Facts(id: 53, resultDescription: ""))
//        facts.append(Facts(id: 54, resultDescription: ""))
//        facts.append(Facts(id: 55, resultDescription: ""))
//        facts.append(Facts(id: 56, resultDescription: ""))
//        facts.append(Facts(id: 58, resultDescription: ""))
//        facts.append(Facts(id: 59, resultDescription: ""))
//        facts.append(Facts(id: 60, resultDescription: ""))

        return facts
    }
}
