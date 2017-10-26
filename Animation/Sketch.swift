import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    var dx : Int
    
    var da : Int
    
    var a : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
        // Set the change value
        dx = 2
        
        // Set the starting position
        a = 250
        
        // Set the change value for negative dx
        da = -2
        
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += dx // to the right
        a += da // to the left
        
        
        // Get rid of borders
        canvas.drawShapesWithBorders = false
        
        
        // Draw red ellipse towards top right
        canvas.fillColor = Color.red
        canvas.drawEllipse(centreX: x, centreY: x, width: 50, height: 50)
        
        // Draw yellow ellipse towards bottom left
        canvas.fillColor = Color.yellow
        canvas.drawEllipse(centreX: a, centreY: a, width: 50, height: 50)
        
        // Draw green ellipse towards top left
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: a, centreY: x, width: 50, height: 50)
        
        // Draw blue ellipse towards bottom left
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: x, centreY: a, width: 50, height: 50)
    }
    
}

