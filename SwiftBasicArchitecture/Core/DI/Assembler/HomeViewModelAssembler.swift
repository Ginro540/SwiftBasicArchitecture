//
//  HomeViewModelAssembler.swift
//  SwiftBasicArchitecture
//
//  Created by 古賀貴伍社用 on 2022/06/24.
//

import Foundation

protocol HomeViewModelAssember {
    
    func resolve() -> HomeViewModel
    func resolve() -> UserInfoUserCase
    func resolve() -> UserRepository
    func resolve() -> UserInfoAPI
    
}


extension HomeViewModelAssember {
    
    
    func resolve() -> HomeViewModel {
        return HomeViewModel(userInfoUserCase: resolve())
    }
    
    func resolve() -> UserInfoUserCase {
        return UserInfoUserCase(useRepository: resolve())
    }
    
    func resolve() -> UserRepository {
        return UserRepositoryImpl(userInfoAPI: resolve())
    }
    
    func resolve() -> UserInfoAPI {
        return UserInfoImpl()
    }
    
}
