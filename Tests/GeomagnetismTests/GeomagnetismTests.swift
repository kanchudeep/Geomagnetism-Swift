import XCTest
import CoreLocation
@testable import Geomagnetism

final class GeomagnetismTests: XCTestCase {
    func testRunways() throws {
        // test on known values for KSFO runways on march 6th 2022
        // 6 Mar 2022
        let date = Date(timeIntervalSince1970: 1646584511)
        
        let runwaysSamples = [
            //SFO runways
            ( CLLocationCoordinate2D(latitude: 37.61899948120117, longitude: -122.375),
              104.0, 118.0 ),
            ( CLLocationCoordinate2D(latitude: 37.61899948120117, longitude: -122.375),
              284.0, 298.0 ),
        ]

        for sample in runwaysSamples {
            let coord = sample.0
            let magneticHeading = sample.1
            let trueHeading = sample.2
            let gm:Geomagnetism = Geomagnetism(longitude: coord.longitude, latitude: coord.latitude, date: date)
            XCTAssertEqual(trueHeading , magneticHeading + gm.declination, accuracy: 1.0)
        }
    }
}
