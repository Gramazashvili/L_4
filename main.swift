//
//  main.swift
//  l4
//
//  Created by Георгий Рамазашвили on 23.12.2020.
//

import Foundation

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.

//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.

enum Color {
    case red,blue,green
}
enum Brand {
    case toyota,honda,bmw
}
enum Trailer {
    case  Yes,No
}

class Car {
    let color: Color
    let maxspeed: Int
    let brand: Brand
    
    
    init(color: Color,maxspeed: Int,brand: Brand){
        self.color = color
        self.maxspeed = maxspeed
        self.brand = brand
    }
    
    func empty(){
        print("Завели машину")
    }
    
    
}


class TruncCar: Car {
    let trailer: Trailer
     init(color: Color, maxspeed: Int, brand: Brand,trailer: Trailer) {
        self.trailer = trailer
        super.init(color: <#T##Color#>, maxspeed: <#T##Int#>, brand: <#T##Brand#>)
    }
    override func empty() {
        print("Завели грузовик")
        
    }
}



class SportCar: Car {
    let coupe: String
     init(color: Color, maxspeed: Int, brand: Brand, trailer: Trailer, coupe: String) {
        self.coupe = "Yes"
        super.init(color: <#T##Color#>, maxspeed: <#T##Int#>, brand: <#T##Brand#>)
    }
    override func empty() {
        print("Завели спортивную машину")
        
    }
}

var car=Car(color: .red, maxspeed: 200, brand: .toyota)
 car.empty()

var truncCar=TruncCar(color: .green, maxspeed: 180, brand: .honda, trailer: .Yes)
 truncCar.empty()
    


var sportcar=SportCar(color: .blue, maxspeed: 380, brand: .bmw, trailer: .No, coupe: "Yes")
 truncCar.empty()
