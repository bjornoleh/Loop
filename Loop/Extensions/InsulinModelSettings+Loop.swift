//
//  InsulinModelSettings+Loop.swift
//  Loop
//
//  Copyright © 2019 LoopKit Authors. All rights reserved.
//

import LoopCore
import LoopKit


extension InsulinModelSettings {
    var title: String {
        switch self {
        case .exponentialPreset(let model):
            return model.title
        case .walsh(let model):
            return model.title
        }
    }
}


extension ExponentialInsulinModelPreset {
    var title: String {
        switch self {
        case .humalogNovologAdult:
            return NSLocalizedString("Rapid-Acting – Adults", comment: "Title of insulin model preset")
        case .humalogNovologChild:
            return NSLocalizedString("Rapid-Acting – Children", comment: "Title of insulin model preset")
        case .fiasp:
            return NSLocalizedString("Fiasp", comment: "Title of insulin model preset")
        case .fiasp_7t:
            return "Fiasp 7t"
        case .fiasp_8t:
            return  "Fiasp 8t"
        case .lyumjev:
            return "Lyumjev"
        }
    }

    var subtitle: String? {
        switch self {
        case .humalogNovologAdult:
            return NSLocalizedString("A model based on the published absorption of Humalog, Novolog, and Apidra insulin in adults.", comment: "Subtitle of Rapid-Acting – Adult preset")
        case .humalogNovologChild:
            return NSLocalizedString("An adjustment to the adult model based on empirical effects in children.", comment: "Subtitle of Rapid-Acting – Children preset")
        case .fiasp:
            return NSLocalizedString("A model based on the published absorption of Fiasp insulin.", comment: "Subtitle of Fiasp preset")
        case .fiasp_7t:
            return NSLocalizedString("A model based on the published absorption of Fiasp insulin.", comment: "Subtitle of Fiasp preset")
        case .fiasp_8t:
            return NSLocalizedString("A model based on the published absorption of Fiasp insulin.", comment: "Subtitle of Fiasp preset")
        case .lyumjev:
            return "Lyumjev Delay 5 - Peak 60 - DIA 300 (5 t)"
        }
    }
}


extension WalshInsulinModel {
    var title: String {
        return NSLocalizedString("Walsh", comment: "Title of insulin model setting")
    }

    var subtitle: String {
        return NSLocalizedString("The legacy model used by Loop, allowing customization of action duration.", comment: "Subtitle description of Walsh insulin model setting")
    }
}
