//
//  ViewModelProtocol.swift
//  SwiftBasicArchitecture
//
//  Created by 古賀貴伍社用 on 2022/06/17.
//

import Foundation
public protocol ViewModelProtocol {
    /// Viewからの入力
    associatedtype Input
    /// UIバインディングの出力
    associatedtype Output
    ///UIからの入力に従ってUIバインディングの出力を行う
    func setup(input:Input) -> Output
}

public extension ViewModelProtocol where Input == Void {

    func setup() -> Output {
        return setup(input: ())
    }
}



