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

//draw Circles

for x in stride(from: 0, through: 500, by: 25)  {
    for y in stride(from: 0, to: 500, by: 30)  {
        canvas.fillColor = Color.red
        canvas.drawRectangle(centreX: x, centreY: y, width: 9, height: 9)
    }
}


/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right. Please do not remove.
 */
PlaygroundPage.current.liveView = canvas.imageView
