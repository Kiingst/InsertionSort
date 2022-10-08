func sort(ArrayFirst: [String]) -> [String] {
    var pass = 0
    var swaps = 0
    var totalswaps = 0
    var Array = ArrayFirst
   // var SortNumArray: [Int] = ArrayFirst
    //  Array.insert(input, at: 0)

    /*
     
    for i in 0...Array.count - 1 {
        SortNumArray.append(get_SortNum(Word1: Array[i]))
        }
        
     */
//    print("Pass: \(pass), Swaps: \(swaps)/\(totalswaps), Array: \(Array)")
   // var x = isArrayTrue(Array: SortNumArray)
    for i in 1..<Array.count {
        var w = i
        while w > 0 && Array[w] < Array[w - 1] {
            let temp1 = Array[w]
            let temp2 = Array[w - 1]
            Array[w] = temp2
            Array[w - 1] = temp1
            swaps += 1
            totalswaps += 1
           // print("Pass: \(pass), Swaps: \(swaps)/\(swaps), Array: \(Array)")
            /*
            let tempW1 = Array[w]
            let tempW2 = Array[w - 1]
            Array[w] = tempW2
            Array[w - 1] = tempW1
             */

            //  swap(&SortNumArray[w - 1], &SortNumArray[w])
            w -= 1
        }
        pass += 1
  //      print("Pass: \(pass), Swaps: \(swaps)/\(totalswaps), Array: \(Array)")
        swaps = 0
    }

   // print(SortNumArray)
    return Array
}
var y : [String] = []

print("Type A word then enter to add to a list for them to be sorted")
print("Type Ctrl-D to exit")
var line : String?
repeat {
    //    print("Please Enter A Random word:")
    line = readLine()
    if line != nil {
        y.insert(line!, at: 0)


    }
} while line != nil


let w = sort(ArrayFirst: y)
print(w)

