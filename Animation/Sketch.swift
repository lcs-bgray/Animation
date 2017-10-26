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
        

        // Draw an ellipse at the top
        canvas.fillColor = Color.purple
        canvas.drawEllipse(centreX: x, centreY: 450, width: 50, height: 50)
        
        // Draw an ellipse
        canvas.fillColor = Color.orange
        canvas.drawEllipse(centreX: a, centreY: 350, width: 50, height: 50)
        
        // Draw an ellipse in the middle of the canvas
        canvas.fillColor = Color.green
        canvas.drawEllipse(centreX: x, centreY: 250, width: 50, height: 50)
        
        // Draw an ellipse
        canvas.fillColor = Color.blue
        canvas.drawEllipse(centreX: a, centreY: 150, width: 50, height: 50)
        
        // Draw an ellipse at the bottom
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: 50, width: 50, height: 50)
    }
    
}
