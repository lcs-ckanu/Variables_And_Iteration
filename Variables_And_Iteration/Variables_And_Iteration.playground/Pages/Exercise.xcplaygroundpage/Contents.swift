//: [Previous](@previous) / [Next](@next)
//: # Exercise
//: Say that we want to create this mountain scene on a 300x300 canvas:
//:
//: ![mountains](mountains.png "Mountains")
//:
//: At first glance this may seem like a complicated image.
//:
//: However, if we break down, or *decompose* the problem (get your whiteboard out!) it's not so bad.
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 300, height: 300)

//: ## Add your code below
//draw Circles
for x in stride(from: 0, through: 300, by: 30)  {
    for y in stride(from: 0, to: 300, by: 30)  {
        canvas.drawEllipse(centreX: x, centreY: y, width: 2, height: 2)
    }
}
// Draw first rectangle
canvas.fillColor = Color.init(hue: 30, saturation: 0, brightness: 25, alpha: 90)
canvas.drawRectangle(centreX: 0, centreY: 0, width: 700, height: 300)

// DraW second Rectangle
canvas.fillColor = Color.init(hue: 30 , saturation: 0 , brightness: 30, alpha: 100)
canvas.drawRectangle(centreX: 0, centreY: 0, width: 700, height: 100)

// Draw Triaangle
for i in 1...50 {
    // Downward Sloping Mountains
    canvas.drawLine(fromX: i, fromY: 0, toX: i, toY: 200-i)
    canvas.drawLine(fromX: i+100, fromY: 0, toX: i+100, toY: 200-i)
      canvas.drawLine(fromX: i+200, fromY: 0, toX: i+200, toY: 200-i)
    
    // Upward Sloping Mountains
    canvas.drawLine(fromX: i+50, fromY: 0, toX: i+50, toY: 150+i)
    canvas.drawLine(fromX: i, fromY: 0, toX: i, toY: 200-i)
   
    // Upward Sloping Montains
    canvas.drawLine(fromX: i, fromY: 0, toX: i, toY: 200-i)





}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
