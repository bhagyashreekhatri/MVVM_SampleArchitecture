//
//  Model.swift
//  MVVP_SampleArchitecture
//
//  Created by Bhagyashree Haresh Khatri on 25/06/2019.
//  Copyright © 2019 Bhagyashree Haresh Khatri. All rights reserved.
//

import Foundation

// MARK: - Model Support

struct updatedDate {
    
    let month:  Int
    let day:    Int
    let year:   Int
    
}

// MARK: - Model

struct ReceipeDataModel {
    
    let title: String  // "Receipe title" #
    let subTitle: String  // Receipe subtitle
    let pageLink:   String  // Receipe overview page
    let imageLink:  String  // Receipe detail image link
    let updateDate: updatedDate // Receipe page updated date
    let description: String // Receipe object description
    let thumbnail:  String  // placeholder for detail image
    
}

// MARK: - Model Data

let ReceipeDate1 = updatedDate(month: 5, day: 19, year: 2016)

let Receipe1 = ReceipeDataModel(title: "Easy Chicken Curry", subTitle: "Chicken Tikka Masala", pageLink: "https://www.delish.com/cooking/recipe-ideas/a20151723/easy-chicken-tikka-masala-recipe/", imageLink: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-chicken-tikka-masala-jpg-1526059261.jpg?resize=4317:*", updateDate: ReceipeDate1, description: "This classic Indian dish is our go-to when we order takeout, but it's actually so easy to make at home. The only ingredient you might not have already have in your pantry is garam masala—it's basically the Indian version of Chinese Five Spice powder.", thumbnail: "receipe")

let ReceipeDate2 = updatedDate(month: 10, day: 23, year: 2018)

let Receipe2 = ReceipeDataModel(title: "Asian Chicken Lettuce Wraps", subTitle: "Chicken Wraps", pageLink: "https://www.delish.com/cooking/recipe-ideas/recipes/a49533/asian-lettuce-wraps-recipe/", imageLink: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190611-asian-lettuce-wraps-522-landscape-pf-1561383352.png?crop=0.668xw:1.00xh;0.155xw,0&resize=4317:*", updateDate: ReceipeDate2, description: "If eating healthy were this easy we'd be eating low-carb dinners every single night. This P.F. Chang copycat lettuce wrap is so easy to make at home and makes getting takeout seem silly.  The sauce for these chicken lettuce wraps is extremely addicting. The sriracha adds a little heat, but you can definitely leave it out if you like (although, we like to add a little extra)...", thumbnail: "receipe")

let ReceipeDate3 = updatedDate(month: 3, day: 19, year: 2019)

let Receipe3 = ReceipeDataModel(title: "Maple Bacon Salmon", subTitle: "Salmon Fried", pageLink: "https://www.delish.com/cooking/recipe-ideas/a27408919/maple-bacon-salmon-recipe/", imageLink: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/190501-maple-bacon-slamon-067-1561134593.jpg?crop=1.00xw:0.847xh;0,0.0459xh&resize=4317:*", updateDate: ReceipeDate3, description: "In a bowl, combine the maple syrup, Dijon mustard, and garlic. Season the salmon to taste with sea salt and freshly ground black pepper. Spread the entire maple-Dijon mixture on top of the salmon. Place the salmon on the grill, skin side down first and cook for about 6 minutes per side....", thumbnail: "receipe")

let ReceipeDate4 = updatedDate(month: 4, day: 20, year: 2019)

let Receipe4 = ReceipeDataModel(title: "Chicken Scallopini", subTitle: "Chicken Fried", pageLink: "https://www.delish.com/cooking/recipe-ideas/a25860457/chicken-scallopini-recipe/", imageLink: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/chicken-scallopini-horizontal-157-1548104463.jpg?crop=1.00xw:1.00xh;0.00170xw,0&resize=980:*", updateDate: ReceipeDate4, description: "Most chicken scallopini recipes call for a lemon-caper sauce, which makes the dish almost indistinguishable from chicken piccata. So just what is chicken scallopini? It comes from the Italian word “scaloppine,” which translates to “small scallops” but has now taken on the meaning of a piece of thinly sliced meat. Chicken scallopini can be cooked in a variety of sauces and flavors. We departed from the piccata herd and went instead for tender mushrooms and a hint of wine, lemon, and broth, capped off with a dash of rich cream: scaloppine ai funghi. Cheers to a perfectly light yet hearty weeknight meal....", thumbnail: "receipe")

let ReceipeDate5 = updatedDate(month: 5, day: 23, year: 2019)

let Receipe5 = ReceipeDataModel(title: "Buffalo Chicken Salad", subTitle: "Awesome Buffalo Chicken Salad", pageLink: "https://www.delish.com/cooking/recipe-ideas/a27925036/easy-buffalo-chicken-salad-recipe/", imageLink: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/delish-190611-buffalo-chicken-salad-192-portrait-pf-1561390263.png?crop=1.00xw:0.667xh;0,0.158xh&resize=*:2244", updateDate: ReceipeDate5, description: "Would you think we are crazy if we wanted to eat a SALAD while watching sports? We don't even care because this buffalo chicken salad has it all. It's the best way to eat your buffalo chicken wings, covered in a homemade ranch dressing and all of our favorite sides. Bonus, no saucy orange fingers! ", thumbnail: "receipe")

