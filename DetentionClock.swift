import Foundation

/// Works out billable detention time and pay for a truck stop.
/// Free time is usually two hours at a shipper or receiver; anything past it
/// is billed at the hourly rate on the rate confirmation, often in 15-minute steps.
public struct DetentionClock {
    public let freeHours: Double
    public let hourlyRate: Double
    public let roundingMinutes: Int

    public init(freeHours: Double = 2.0, hourlyRate: Double = 50.0, roundingMinutes: Int = 15) {
        self.freeHours = freeHours
        self.hourlyRate = hourlyRate
        self.roundingMinutes = max(1, roundingMinutes)
    }

    /// Minutes past free time, rounded down to the billing step.
    public func billableMinutes(checkIn: Date, checkOut: Date) -> Int {
        let onSite = max(0, checkOut.timeIntervalSince(checkIn)) / 60
        let over = onSite - freeHours * 60
        guard over > 0 else { return 0 }
        return (Int(over) / roundingMinutes) * roundingMinutes
    }

    /// Detention pay owed for the stop.
    public func pay(checkIn: Date, checkOut: Date) -> Double {
        Double(billableMinutes(checkIn: checkIn, checkOut: checkOut)) / 60 * hourlyRate
    }
}
