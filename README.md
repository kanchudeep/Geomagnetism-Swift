# Geomagnetism Swift
Swift class to calculate magnetic declination, magnetic field strength, inclination etc. for any point on the earth.

## Usage
```swift
// Create instance with only location and without altitude & date
let gm:Geomagnetism = Geomagnetism(longitude: 123.45678, latitude: 76.54321)
print("Declination: \(gm.declination)")

// Create a date for calculation
let dateComponents:DateComponents = DateComponents(year: 2017, month: 7, day: 1)
var date:Date = Calendar.init(identifier: .gregorian).date(from: dateComponents)!
// Update instance with altitude and date apart from location
gm.calculate(longitude: 98.76543, latitude: 12.34567, altitude: 1234, date: date)
print("Declination: \(gm.declination)")
```
