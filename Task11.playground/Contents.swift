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

chessAnalizer(dictionary: dictionary)

