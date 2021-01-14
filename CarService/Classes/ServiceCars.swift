//
//  ServiceCars.swift
//  CarService
//
//  Created by Marcio Fetter on 14/01/21.
//

import Foundation

public enum MyError: String, Error {
    case carNotFounded = "Nenhum carro foi encontrdo"
}

public struct CarModel {
    public var model: String
    public var color: String
}

public protocol ServiceCarsProtocol {
    func getCars(completionHandler: (Result<[CarModel], MyError>) -> Void)
}

public class ServiceCars: ServiceCarsProtocol {
    
    public init() {}
    
    public func getCars(completionHandler: (Result<[CarModel], MyError>) -> Void) {
        let cars = [CarModel(model: "KA", color: "Branco"),
                    CarModel(model: "Belina", color: "Azul")]
        completionHandler(.success(cars))
    }
}
