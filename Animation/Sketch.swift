import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // Change the
    var dx : Int
    
    var random : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // Set the change value
        dx = 2
        
        random = random(from: 50, toButNotIncluding: 450)
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Clean up - draw a white rectangle over the entire canvas
        canvas.fillColor = Color.white
        canvas.drawRectangle(bottomLeftX: 0, bottomLeftY: 0, width: 500, height: 500)
        
        // Change position
        x += dx
        
        // Make the circle bounce on the right edge
        if x > 475 { // start of the block
            dx = -2 // move left
        } // end of the block
        
        if x < 25 {
            dx = 2
        }
        
        

        
        
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
    }
    
}
