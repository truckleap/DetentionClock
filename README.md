# DetentionClock

Drivers lose hours at docks, and most of that time is never billed because nobody wrote down the check-in time. DetentionClock is a small Swift library that turns check-in and check-out timestamps into billable minutes and a dollar amount, using the free time and hourly rate from the rate confirmation.

```swift
import DetentionClock

let clock = DetentionClock(freeHours: 2, hourlyRate: 60, roundingMinutes: 15)
let pay = clock.pay(checkIn: arrived, checkOut: released)   // e.g. 3h50m on site -> 105 min -> $105
```

- Free time defaults to 2 hours, the most common term on dry van and reefer rate cons.
- Billing rounds down to 15-minute steps by default; set `roundingMinutes: 1` for exact minutes.
- No dependencies, no network calls.

Some brokers cap detention or require notice before free time runs out, so always check the rate con. There is a browser version with lumper fees included in the [detention and lumper calculator](https://truckleap.com/detention-lumper-calculator).

## Install

CocoaPods: `pod 'DetentionClock'` · Swift Package Manager: add `https://github.com/truckleap/DetentionClock.git`.

MIT licensed.
