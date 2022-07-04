//
//  UserRepository.swift
//  SwiftBasicArchitecture
//
//  Created by 古賀貴伍社用 on 2022/06/24.
//

import RxSwift

protocol UserRepository {
    func getUserInfo(token: String) -> Single<Bool>
}

struct UserRepositoryImpl: UserRepository {
    
    private let userInfoAPI: UserInfoAPI
    
    init(userInfoAPI: UserInfoAPI){
        self.userInfoAPI = userInfoAPI
    }
    
    func getUserInfo(token: String) -> Single<Bool> {
        self.userInfoAPI.getUserInfo(token: token)
    }
}
