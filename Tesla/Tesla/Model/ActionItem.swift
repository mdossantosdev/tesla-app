//
//  ActionItem.swift
//  Tesla
//
//  Created by Marc on 26/06/2023.
//

import Foundation

struct ActionItem: Hashable {
    let icon: String
    let label: String
}

let quickShortcuts: [ActionItem] = [
    ActionItem(icon: "fanblades.fill", label: "Fan On"),
    ActionItem(icon: "bolt.car.fill", label: "Close Charge Port"),
]

let chargingShortcut = ActionItem(icon: "bolt.fill", label: "Charging")

let mediaShortcut = ActionItem(icon: "play.fill", label: "Media Controls")

let recentActions: [ActionItem] = [
    ActionItem(icon: "arrow.up.square", label: "Open Trunk"),
    ActionItem(icon: "fanblades", label: "Fan Off"),
    ActionItem(icon: "person.fill.viewfinder", label: "Summon"),
]

let carControls: [ActionItem] = [
    ActionItem(icon: "flashlight.on.fill", label: "Flash"),
    ActionItem(icon: "speaker.wave.3.fill", label: "Honk"),
    ActionItem(icon: "key.horizontal.fill", label: "Start"),
    ActionItem(icon: "arrow.up.bin", label: "Front Trunk"),
    ActionItem(icon: "arrow.up.square", label: "Trunk"),
]
