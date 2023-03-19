//
//  HomeModel.swift
//  TwitterDemo
//
//  Created by Ankush on 01/03/23.
//

import Foundation

// MARK: - HomeModel
struct HomeModel: Codable {
    let success: Bool?
    let data: [Datum]?
}

// MARK: - Datum
struct Datum: Codable, Hashable {
    
    
    let innerDetails: InnerDetails?
    let promoted, postedImage: [PostedImage]?
    let isPromoted: Bool?
    let followedBy: String?
    let showFollowedBy, isVerified: Bool?
    let postedTime, views, discription, userImage: String?
    let userFullName, userName, id, promotedLink,promotedDescription : String?
}

// MARK: - InnerDetails
struct InnerDetails: Codable, Hashable {
    let comments, retweets, likes, trending: String?
}

// MARK: - PostedImage
struct PostedImage: Codable, Hashable {
    let id, pImage: String?
}
