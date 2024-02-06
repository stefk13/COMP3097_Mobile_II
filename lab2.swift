import Foundation

func greet(_ n:String)->Void //You can skip delcaring the return type
{
    print("Hi, \(n)!")
}

greet("John")

func area(width w:Int, height h:Int)->Int{
    var a = w*h; return a
}

let a = area(width:1,height:1)
print(a)

func swapNumbers(a:inout Int, b:inout Int){
    let t = a
    a=b
    b=t
}

var x=2
var y=10

swapNumbers(a:&x, b:&y) // swap using function and inout params
(x,y)=(y,x) //swap using tuples
print("x:\(x), y:\(y)") 


func calculate(a:Int, b:Int, op:String)->Int{
    func plus(_ a:Int, _ b:Int)->Int{
        return a+b
    }
    func minus(_ a:Int, _ b:Int)->Int{
        return a-b
    }
    var res:Int
    switch op {
        case "+":res=plus(a,b)
        case "-":res=minus(a,b)
        default:
            fatalError("Unsuportted")
    }
    return res
}

x = calculate(a:1, b:2, op:"+")
print(x)


func selectMove(input:String) -> ((Int,Int))->(Int,Int) {
    func up(pos:(x:Int, y:Int))->(Int,Int){
        var x = pos.x
        var y = pos.y
        return (x, y+1)
    }
     func down(pos:(Int, Int))->(Int,Int){
        var x = pos.0
        var y = pos.1
        return(x, y-1)
    }
    func moveRight(pos:(Int, Int))->(Int,Int){
        var x = pos.0
        var y = pos.1
        return (x+1, y)
    }
    func moveLeft(pos:(Int, Int))->(Int,Int){
        var x = pos.0
        var y = pos.1
        return(x-1, y)
    }
    switch input {
        case "up": return up
        case "right": return moveRight
        case "left": return moveLeft
        case "down": return down
        default:
            fatalError("Unsupported")
    }
}

let nextMove = selectMove(input:"up")
// print(nextMove((0,0)))
var myPos = (0,0)
myPos = nextMove(myPos)
print(myPos)

func makeMove(
    pos:(Int,Int), //oldPos
    move:((Int,Int))->(Int,Int)//move or tranformation
) -> (Int,Int) //newPos
{
    var p = move(pos)
    print("New position \(p)")
    return p
}

// print(makeMove(pos:(0,0), move:selectMove(input:"right")))
myPos = makeMove(pos:myPos, move:selectMove(input:"right"))
myPos = makeMove(pos:myPos, move:selectMove(input:"left"))
myPos = makeMove(pos:myPos, move:selectMove(input:"down"))
print(myPos)

var arr:[Int] = [1,2,3,4,5]

//find first element of arr that satisfies the condition
func findItem(a:[Int], cond:(Int)->Bool)->Int?{
    for x in a{
        if cond(x){
            return x
        }
    }
    return nil
}


func myCond(a:Int)->Bool{
    return a>4
}

var f = findItem(a:arr, cond:myCond)
if let g=f{
    print(g)
}else{
    print("not found")
}
print(f ?? "not found")
print(f!)
//print(f!)//carefull it may crash if f is nil

// {(a:Int)->Booll in return a >2}
// {a in return a>2}
// {a in a>2}
// {$0>2}
// f = findItem(a:arr, cond:{$0>2})
f = findItem(a:arr){$0>2} //closure has access to the variable that is deined in the context
print(f)












