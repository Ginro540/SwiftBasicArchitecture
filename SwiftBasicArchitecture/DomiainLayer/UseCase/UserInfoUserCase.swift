//
//  File.swift
//  SwiftBasicArchitecture
//
//  Created by 古賀貴伍社用 on 2022/06/24.
//

import RxSwift

struct UserInfoUserCase {
    
    private let useRepository: UserRepository
    
    init(useRepository: UserRepository) {
        self.useRepository = useRepository
    }

    func run(token: String) -> Single<Bool> {
        self.useRepository.getUserInfo(token: token)
    }
}

