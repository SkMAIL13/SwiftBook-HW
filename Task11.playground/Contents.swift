import UIKit
//==================================
//              Task-11
//==================================
//              Execise-1
//==================================
/*Вернемся к заданию 2 из предыдущей главы (с . 168) . Объеди- ните написанный код анализа коллекции шахмат, хранящейся в переменной Chessmans, в функции chessAnalizer(figures:Chessman) . В качестве входного параметра функция должна при- нимать словарь того же типа, что и переменная Chessmans.
*/

typealias Chessman = [String:(alpha:Character,num:Int)?]

var dictionary: Chessman = ["White horse":(alpha:"A",num: 2),
                            "Black king":(alpha:"C",num: 6),
                            "White king":(nil)]

func chessAnalizer (dictionary:Chessman) {
    for(chessFigure, chessposition) in dictionary {
        if chessposition == nil {
            print("\(chessFigure) - is dead")
        } else {
            print("Location of \(chessFigure) is \(dictionary[chessFigure]!!)")
        }
    }
}

//chessAnalizer(dictionary: dictionary)



//==================================
//              Exercise-2
//==================================
/*
 Создайте функцию, которая предназначена для изменения состава и характеристик фигур в переменной Chessmans . В качестве входных параметров она должна принимать саму пере- менную Chessmans (как сквозной параметр), в которую будут вноситься изменения, имя фигуры (значение типа String) и опциональный кортеж координат фигуры (значение типа (Character, Int)?) .
 При этом должна проводиться проверка факта существования фигуры в словаре . Если фигура не существует, то информация о ней добавляется, в противном случае информация обновля- ется в соответствии с переданной информацией . 
 */

func changeFigure (dictionary: inout Chessman, name: String, chessposition: (alpha: Character, num: Int)?) {
    if dictionary[name] != nil && dictionary[name]! != nil && chessposition != nil {
        let (alpha, num) = chessposition!
        dictionary[name]!!.alpha = alpha
        dictionary[name]!!.num = num
    } else {
        dictionary[name] = chessposition
    }
}
changeFigure(dictionary: &dictionary, name: "", chessposition: (alpha: "C", num: 6))
print(dictionary)

