# Geomagnetism Swift
Swift class to calculate magnetic declination, magnetic field strength, inclination etc. for any point on the earth.

## Usage
```swift
// Create instance
let gm:Geomagnetism = Geomagnetism(longitude: 123.45678, latitude: 76.54321)
print("Declination: \(gm.getDeclination())")
// Update instance
gm.calculate(98.76543, 12.34567)
print("Declination: \(gm.getDeclination())")
```
