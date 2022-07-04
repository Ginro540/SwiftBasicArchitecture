//
//  Sequence.swift
//  SwiftBasicArchitecture
//
//  Created by 古賀貴伍社用 on 2022/06/24.
//

import Foundation
import RxSwift

protocol UserInfoAPI {
    // User情報取得API
    func getUserInfo(token: String) -> Single<Bool>
}

struct UserInfoImpl: UserInfoAPI {
    
    func getUserInfo(token: String) -> Single<Bool> {
        return Single.create { observer in
            observer(.success(UserInfoAPIs.getUserInfo(token: token)))
            return Disposables.create()
        }
    }
}
