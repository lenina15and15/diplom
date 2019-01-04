//
//  Vacancy.swift
//  diplom
//
//  Created by Nikolai Masenko on 1/3/19.
//  Copyright © 2019 Nikolai Masenko. All rights reserved.
//

import Foundation
import RealmSwift

typealias Vacancies = [Vacancy]

class Vacancy: Object, Decodable {
    
    @objc dynamic var code: Int = 0
    @objc dynamic var title: String = ""
    @objc dynamic var summary: String = ""
    @objc dynamic var price: Double = 0.0
    @objc dynamic var rank: Int = 0
    var tags = List <Tag>()
    
    private enum CodingKeys: String, CodingKey {
        case code, title, summary, price, rank, tags
    }
    
    required convenience init(from decoder: Decoder) throws {
        self.init()
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.code = try container.decode(Int.self, forKey: .code)
        self.title = try container.decode(String.self, forKey: .title)
        self.summary = try container.decode(String.self, forKey: .summary)
        self.price = try container.decode(Double.self, forKey: .price)
        self.rank = try container.decode(Int.self, forKey: .rank)
        let tagsArray = try container.decode([Tag].self, forKey: .tags)
        tags.append(objectsIn: tagsArray)
    }
    
    override static func primaryKey() -> String? {
        return "code"
    }
    
}

extension RealmService {
    func setupVacancy() {
        if self.getAllVacancy()?.count == 0 {
            do {
                guard let jsonURL = Bundle.main.path(forResource: "vacancy", ofType: "json") else {
                    fatalError()
                }
                let jsonNSData = try NSData(contentsOfFile: jsonURL)
                if let jsonData: Data = jsonNSData as? Data {
                    let vacancies = try JSONDecoder().decode(Vacancies.self, from: jsonData)
                    for vacancy in vacancies {
                        guard self.createUpdateVacancy(vacancy: vacancy) == nil else {
                            fatalError("Cannot setup categories")
                        }
                    }
                }
            } catch let error {
                print(error)
            }
        }
    }
    
    func createUpdateVacancy(vacancy: Vacancy) -> NSError? {
        guard realm != nil else {
            return NSError(domain: "DB", code: 1, userInfo: nil)
        }
        do {
            try self.realm?.write {
                self.realm?.create(Vacancy.self, value: vacancy, update: true)
            }
        } catch {
            return NSError(domain: "DB", code: 2, userInfo: nil)
        }
        return nil
    }
    
    func getAllVacancy() -> Results<Vacancy>? {
        let result = self.realm?.objects(Vacancy.self)
        return result
    }
}

