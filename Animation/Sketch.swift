import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    var y : Int
    
    var a: Double
    
    var dx: Int
    
    var dy: Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        y = 0
        a = 500/(250 * -250)
        dy = 1
        dx = 1
    }
    
    // Draw cannon ball effect
    func draw() {
        x += dx
        y = Int(a * Double(x) * (Double(x)-500))
        
        // Draw ellipse
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        
    }
    
}
