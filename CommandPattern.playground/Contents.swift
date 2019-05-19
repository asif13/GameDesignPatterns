import Foundation


enum ButtonType {
    case x; case y; case a; case b
}
func inputHandler(inputButton: ButtonType){
    switch inputButton {
        case .x: jump(); case .y: firegun(); case .a: swapgun(); case .b: lurch()
    }
}

func firegun(){ print("firegun") }
func jump(){  print("jump") }
func swapgun(){ print("swapgun") }
func lurch(){ print("lurch") }

protocol Command {
    func execute()
}

struct jumpCommand: Command{
    func execute() {
        firegun()
    }
}
struct firegunCommand: Command{
    func execute() {
        firegun()
    }
}
struct lurchCommand: Command{
    func execute() {
        lurch()
    }
}
struct swapgunCommand: Command{
    func execute() {
        swapgun()
    }
}
