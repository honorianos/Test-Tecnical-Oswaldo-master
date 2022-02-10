//
//  DataPersistenceManager.swift
//  Test Tecnical Oswaldo
//
//  Created by Oswaldo Jeisson Escobar Huisa on 08/02/2022.
//

import Foundation
import UIKit
import CoreData


class DataPersistenceManager {
    
    enum DatabasError: Error {
        case failedToSaveData
        case failedToFetchData
        case failedToDeleteData
    }
    private let shareUser = ShareUserDefaults()
    static let shared = DataPersistenceManager()
    
    
    func downloadTitleWith(model: Title, completion: @escaping (Result<Void, Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        
        let context = appDelegate.persistentContainer.viewContext
        
        let item = TitleItem(context: context)
        
        item.original_title = model.original_title
        item.id = Int64(model.id)
        item.original_name = model.original_name
        item.overview = model.overview
        item.media_type = model.media_type
        item.poster_path = model.poster_path
        item.release_date = model.release_date
        item.vote_count = Int64(model.vote_count)
        item.vote_average = model.vote_average
        
        
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToSaveData))
        }
    }
    
    func InsertTitleWithDatabase(array: [Title], completion: @escaping (Result<Void, Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        for model in array {
            let item = TitleItem(context: context)
            item.original_title = model.original_title
            item.id = Int64(model.id)
            item.original_name = model.original_name
            item.overview = model.overview
            item.media_type = model.media_type
            item.poster_path = model.poster_path
            item.release_date = model.release_date
            item.vote_count = Int64(model.vote_count)
            item.vote_average = model.vote_average
        }
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToSaveData))
        }
    }
    
    
    func InsertTitleWithDatabasePopular(array: [Title], completion: @escaping (Result<Void, Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        for model in array {
            let item = TitleItemPopular(context: context)
            item.original_title = model.original_title
            item.id = Int64(model.id)
            item.original_name = model.original_name
            item.overview = model.overview
            item.media_type = model.media_type
            item.poster_path = model.poster_path
            item.release_date = model.release_date
            item.vote_count = Int64(model.vote_count)
            item.vote_average = model.vote_average
            
        }
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToSaveData))
        }
    }
    func fetchingTitlesPopularFromDataBase(completion: @escaping (Result<[Title], Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request: NSFetchRequest<TitleItemPopular>
        
        request = TitleItemPopular.fetchRequest()
        
        do {
            let results = try context.fetch(request)
            var resultsParsing = [Title]()
            for result in results
            {
                resultsParsing.append(Title(id: Int(result.id), media_type: result.media_type, original_name: result.original_name, original_title: result.original_title, poster_path: result.poster_path, overview: result.overview, vote_count: Int(result.vote_count), release_date: result.release_date, vote_average: result.vote_average))
                print(result)
            }
            completion(.success(resultsParsing))
            
        } catch {
            completion(.failure(DatabasError.failedToFetchData))
        }
    }
    func InsertTitleWithDatabaseUpcoming(array: [Title], completion: @escaping (Result<Void, Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        for model in array {
            let item = TitleItemUpcoming(context: context)
            item.original_title = model.original_title
            item.id = Int64(model.id)
            item.original_name = model.original_name
            item.overview = model.overview
            item.media_type = model.media_type
            item.poster_path = model.poster_path
            item.release_date = model.release_date
            item.vote_count = Int64(model.vote_count)
            item.vote_average = model.vote_average
            
        }
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToSaveData))
        }
    }
    func fetchingTitlesUpcomingFromDataBase(completion: @escaping (Result<[Title], Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request: NSFetchRequest<TitleItemUpcoming>
        
        request = TitleItemUpcoming.fetchRequest()
        
        do {
            let results = try context.fetch(request)
            var resultsParsing = [Title]()
            for result in results
            {
                resultsParsing.append(Title(id: Int(result.id), media_type: result.media_type, original_name: result.original_name, original_title: result.original_title, poster_path: result.poster_path, overview: result.overview, vote_count: Int(result.vote_count), release_date: result.release_date, vote_average: result.vote_average))
                print(result)
            }
            completion(.success(resultsParsing))
            
        } catch {
            completion(.failure(DatabasError.failedToFetchData))
        }
    }
    func InsertTitleWithDatabaseTopRate(array: [Title], completion: @escaping (Result<Void, Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        let context = appDelegate.persistentContainer.viewContext
        for model in array {
            let item = TitleItemTopRate(context: context)
            item.original_title = model.original_title
            item.id = Int64(model.id)
            item.original_name = model.original_name
            item.overview = model.overview
            item.media_type = model.media_type
            item.poster_path = model.poster_path
            item.release_date = model.release_date
            item.vote_count = Int64(model.vote_count)
            item.vote_average = model.vote_average
            
        }
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToSaveData))
        }
    }
    func fetchingTitlesTopRateFromDataBase(completion: @escaping (Result<[Title], Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request: NSFetchRequest<TitleItemTopRate>
        
        request = TitleItemTopRate.fetchRequest()
        
        do {
            let results = try context.fetch(request)
            var resultsParsing = [Title]()
            for result in results
            {
                resultsParsing.append(Title(id: Int(result.id), media_type: result.media_type, original_name: result.original_name, original_title: result.original_title, poster_path: result.poster_path, overview: result.overview, vote_count: Int(result.vote_count), release_date: result.release_date, vote_average: result.vote_average))
                print(result)
            }
            completion(.success(resultsParsing))
            
        } catch {
            completion(.failure(DatabasError.failedToFetchData))
        }
    }
    func fetchingTitlesFromDataBase(completion: @escaping (Result<[TitleItem], Error>) -> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        let request: NSFetchRequest<TitleItem>
        
        request = TitleItem.fetchRequest()
        
        do {
            
            let titles = try context.fetch(request)
            completion(.success(titles))
            
        } catch {
            completion(.failure(DatabasError.failedToFetchData))
        }
    }
    
    func deleteTitleWith(model: TitleItem, completion: @escaping (Result<Void, Error>)-> Void) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        
        
        context.delete(model) 
        
        do {
            try context.save()
            completion(.success(()))
        } catch {
            completion(.failure(DatabasError.failedToDeleteData))
        }
        
    }
    
    func SearchTitleWith(model: String, completion: @escaping (Result<[Title], Error>) -> Void) {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        
        let context = appDelegate.persistentContainer.viewContext
        let request: NSFetchRequest<TitleItem>
        request = TitleItem.fetchRequest()
        request.predicate = NSPredicate(format: "original_title CONTAINS[cd] %@", model)
        do {
            
            let results = try context.fetch(request)
            var resultsParsing = [Title]()
            print(results)
            for result in results
            {
                resultsParsing.append(Title(id: Int(result.id), media_type: result.media_type, original_name: result.original_name, original_title: result.original_title, poster_path: result.poster_path, overview: result.overview, vote_count: Int(result.vote_count), release_date: result.release_date, vote_average: result.vote_average))
                print(result)
            }
            print("ejecuta")
            completion(.success(resultsParsing))
        } catch {
            completion(.failure(DatabasError.failedToFetchData))
            print(error.localizedDescription)
        }
    }
    
    func Exist(id: String, completion: @escaping (Result<Bool, Error>) -> Void) {
        if self.shareUser.getFlagIsFirstLoadMenu() {
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
                return
            }
            
            let context = appDelegate.persistentContainer.viewContext
            let request: NSFetchRequest<TitleItem>
            request = TitleItem.fetchRequest()
            request.predicate = NSPredicate(format: "id LIKE %@", id)
            do {
                
                let results = try context.fetch(request)
                print(results)
                if results.count > 0 {
                    completion(.success(false))
                }
                completion(.success(true))
                
            } catch {
                completion(.failure(DatabasError.failedToFetchData))
                print(error.localizedDescription)
            }
        }
        completion(.success(false))
    }
}
