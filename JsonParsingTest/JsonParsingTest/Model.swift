

import Foundation

struct Model : Codable{
    var code : Int
    var data : MonitorData
    var message : String
}

struct MonitorData : Codable{
    var monitor_id : Int
    var technician_zuid : String
}
