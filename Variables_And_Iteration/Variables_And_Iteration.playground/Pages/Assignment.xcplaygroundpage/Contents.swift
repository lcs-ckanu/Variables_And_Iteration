//: [Previous](@previous)
//: # Assignment
//: Return to the plans you made at the start of this course for an image that used elements of repetition.
//:
//: Mr. Gordon will be emailing this to you.
//:
//: Reproduce that image in code, below.
//:
//: Remember to commit and push your work often.
//:
//: ![commit_menu](commit_menu.png "Commit")
//:
//: ## Required code
//: The following two statements are required to make the playground run. Please do not remove.
import Cocoa
import PlaygroundSupport

//: ## Add your code below

// Create canvas
let canvas = Canvas(width: 500, height: 500)

//BorderWidth
canvas.drawShapesWithBorders = false

// Draw Rectangle
for x in stride(from: 0, through: 500, by: 25)  {
    for y in stride(from: 0, to: 500, by: 30)  {
        if x %  50 == 0 {
            canvas.fillColor = Color.red
            canvas.drawRectangle(centreX: x, centreY: y, width: 30, height: 20)
            // Draw Circles
        } else if x % 75 == 0 {
            canvas.fillColor = Color.blue
            canvas.drawEllipse(centreX: x, centreY: y, width: 25, height: 25)
        } else {
            //  Draw Lines
            canvas.defaultLineWidth = 2
            canvas.fillColor = Color.black
            canvas.drawLine(fromX: x, fromY: y, toX: 0, toY: 500)
        }
    }
}

/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
