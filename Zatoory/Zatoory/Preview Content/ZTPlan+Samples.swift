//
//  ZTPlan+Samples.swift
//  Zatoory
//
//  Created by Tyrell_07 on 1/18/25.
//

import Foundation

extension ZTPlan {
    static let samples: [ZTPlan] = [
        ZTPlan(
            title: "돈의 속성 책 읽기",
            category: ZTCategory(id: 1, name: "책읽기", color: ZTColor.red),
            time: .init(
                plannedStart: Date(timeInterval: -60*60*1, since: .now),
                plannedEnd: Date(timeInterval: -60, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "아침 운동",
            category: ZTCategory(id: 2, name: "운동", color: ZTColor.blue),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*4, since: .now),
                plannedEnd: Date(timeInterval: 60*60*5, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "회의 준비",
            category: ZTCategory(id: 3, name: "업무", color: ZTColor.green),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*6, since: .now),
                plannedEnd: Date(timeInterval: 60*60*7, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "점심 식사",
            category: ZTCategory(id: 4, name: "식사", color: ZTColor.orange),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*8, since: .now),
                plannedEnd: Date(timeInterval: 60*60*9, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "프로그래밍 공부",
            category: ZTCategory(id: 5, name: "학습", color: ZTColor.purple),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*10, since: .now),
                plannedEnd: Date(timeInterval: 60*60*12, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "저녁 산책",
            category: ZTCategory(id: 6, name: "휴식", color: ZTColor.blue),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*13, since: .now),
                plannedEnd: Date(timeInterval: 60*60*14, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "영화 감상",
            category: ZTCategory(id: 7, name: "여가", color: ZTColor.yellow),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*15, since: .now),
                plannedEnd: Date(timeInterval: 60*60*17, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "저녁 식사 준비",
            category: ZTCategory(id: 8, name: "요리", color: ZTColor.orange),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*18, since: .now),
                plannedEnd: Date(timeInterval: 60*60*19, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "독서 시간",
            category: ZTCategory(id: 9, name: "독서", color: ZTColor.yellow),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*20, since: .now),
                plannedEnd: Date(timeInterval: 60*60*21, since: .now)
            ),
            state: .planned
        ),
        ZTPlan(
            title: "취침 준비",
            category: ZTCategory(id: 10, name: "휴식", color: ZTColor.red),
            time: .init(
                plannedStart: Date(timeInterval: 60*60*22, since: .now),
                plannedEnd: Date(timeInterval: 60*60*23, since: .now)
            ),
            state: .planned
        )
    ]
}
