//
//  ActionItem.swift
//  Tesla
//
//  Created by Marc on 26/06/2023.
//

import Foundation

struct ActionItem {
    let icon: String
    let label: String
}

let quickShortcuts: [ActionItem] = [
    ActionItem(icon: "bolt.fill", label: "Charging"),
    ActionItem(icon: "fanblades.fill", label: "Fan On"),
    ActionItem(icon: "play.fill", label: "Media Controls"),
    ActionItem(icon: "bolt.car.fill", label: "Close Charge Port"),
]

let recentActions: [ActionItem] = [
    ActionItem(icon: "arrow.up.square", label: "Open Trunk"),
    ActionItem(icon: "fanblades", label: "Fan Off"),
    ActionItem(icon: "person.fill.viewfinder", label: "Summon"),
]
