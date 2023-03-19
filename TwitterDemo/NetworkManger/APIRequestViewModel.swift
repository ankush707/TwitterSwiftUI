//
//  APIRequest.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import Foundation
import SwiftUI


typealias HomeCompletionHandler = ((HomeModel) -> ())

class APIRequestViewModel: ObservableObject {
    
    @Published var homeObj : HomeModel?
    @Published var isLoading: Bool = false
    
    init() {
        if let rawData = self.readLocalFile("data_json")
        {
            let parsedObj = self.loadJson(rawData)
            print("jsonData = \(parsedObj)")
            self.homeObj = parsedObj
        }
        
        //self.loadData()
    }
    
    //MARK: - Service Call
    func loadData() {
        guard let url = URL(string: "https://datausa.io/api/data?drilldowns=Nation&measures=Population") else {
            print("Invalid url...")
            return
        }
        let urlRequest = URLRequest(url: url)
        isLoading = true
        URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let dataObj = data else {
                print("Invalid data...")
                return
            }
            if let homeObj = try? JSONDecoder().decode(HomeModel.self, from: dataObj) {
                
                DispatchQueue.main.async {
                    self.isLoading = false
                    self.homeObj = homeObj
                }
            }
        }.resume()
    }
    
    //MARK: Reading and Loading Local JSON
    func readLocalFile(_ filename: String) -> Data? {
        guard let file = Bundle.main.path(forResource: filename, ofType: "json")
        else {
            fatalError("Unable to locate file \"\(filename)\" in main bundle.")
        }
        
        do {
            return try String(contentsOfFile: file).data(using: .utf8)
        } catch {
            fatalError("Unable to load \"\(filename)\" from main bundle:\n\(error)")
        }
    }
    
    
    func loadJson(_ data: Data) -> HomeModel {
        do {
            return try JSONDecoder().decode(HomeModel.self, from: data)
        } catch {
            fatalError("Unable to decode  \"\(data)\" as \(HomeModel.self):\n\(error)")
        }
    }
}
