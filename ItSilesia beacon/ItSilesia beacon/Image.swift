//
//  Image.swift
//  ItSilesia beacon
//
//  Created by Tomasz Kaczmarzyk on 29.04.2015.
//  Copyright (c) 2015 Tomasz Kaczmarzyk. All rights reserved.
//

import UIKit

class Image: NSObject {
    
    func changeText(let value1: String) -> String
    {
        var text: String
        switch value1
        {
        case "option01":
            //Case1
            text = "VoigtAR – aplikacja przygotowana dla firmy PPUH VOIGT Sp. z.o.o. przedstawiająca ofertę produktową firmy przy użyciu rozszerzonej rzeczywistości (ang.  Augumeted Reality). Zaprojektowana pod kątem użycia na stoisku firmy Voigt, na dedykowanym do tego standzie oraz do wsparcia i rozszerzenia zawartości tradycyjnego papierowego katalogu produktów. Zeskanowanie odpowiednik  znaczników, pozwala zapoznać się z wyglądem, cechami i parametrami technicznymi konkretnych preparatów. Dodatkowo, w ręce użytkownika oddano kalkulator kosztów użycia i wydajności przeglądanego środka czyszczącego. Aplikacja VoigtAR jest dostępna na telefony i tablety z oprogramowaniem Android oraz iOS w dwóch wersjach językowych – polskim i angielskim."
            break
            //Case1
        case "option02":
            //Case2
            text = "Aplikacja interaktywna przygotowana dla firmy Kopex S.A. rozszerzająca kalendarz firmowy o dodatkowy wymiar. Oprogramowanie tworzy specjalne znaczniki na podstawie ilustracji podopiecznych Fundacji Iskierka znajdujących się w kalendarzu, na których wyświetla modele 3D urządzeń narysowanych przez dzieci. Dodatkowo wyświetlane są także wydarzenia wraz z ich szczegółowym opisem. Wpisy można edytować w dedykowanym tej aplikacji systemie zarządzania treścią. Aplikacja pozwala także na informowanie użytkowników o wyjątkowych wydarzeniach poprzez system notyfikacji.Aplikacja Kalendarz Augmented Reality jest dostępna na telefony i tablety z system Android oraz iOS."
            break
            //Case2
        default:
            text = ""
            //default
            println("default")
            //default
        }
        return text
    }
    
    func changeImage(let value2: String) -> String
    {
        var imageToChange: String
        switch value2
        {
        case "option01":
            //Case1
            imageToChange = "voigt"
            break
            //Case1
        case "option02":
            //Case2
            imageToChange = "kopex"
            break
            //Case2
        default:
            imageToChange = ""
            //default
            println("default")
            //default
        }
        return imageToChange
    }
    
    func autoSize(let count: Int) -> Int
    {
        var n = count / 28
        if count % 28  > 0
        {
            n = n + 1
        }
        n = n * 30
        return n
    }
}
