//func linearSearch(array: [Int], key: Int) -> Bool {
//    for item in array {
//        if item == key {
//            return true
//        }
//    }
//    return false
//}
//
//linearSearch(array: [1,34,77,120,10], key: 34)
//
//func binarySearch<T : Comparable>(arr: [T], target: T) -> Bool{
//    var left = 0
//    var right = arr.count - 1
//
//    while (left <= right) {
//        let mid = (left + right)/2
//        let value = arr[mid]
//
//        if(value == target){
//           return true
//        }
//        if(value < target){
//            left = mid + 1
//        }
//
//        if (value > target){
//            right = mid - 1
//        }
//    }
//    return false
//}
//
//binarySearch(arr: ["Pranoti","cute"], target: "cute")
//
//
//func binarySearchPrefix(array: [String], target: String) {
//    var left = 0
//    var right = array.count - 1
//    let not = "not found"
//
//    while (left <= right) {
//        let mid = (left + right) / 2
//        let value = array[mid]
//
//        if value.hasPrefix(target) {
//            //return value
//            print(value)
//        }
//
//        if (value.hasSuffix(target)){
//            //return value
//            print(value)
//        }
//
//        if (value < target) {
//            left = mid + 1
//        }
//
//        if (value > target) {
//            right = mid - 1
//        }
//    }
//}
//
//binarySearchPrefix(array: ["Pranoti","Cute","dogs","Parrot","Fish","Pet"], target: "t")
//
//
//
//
//class TrieNode{
//    var children: [Character: TrieNode] = [:]
//    var isFinal: Bool = false
//    var prefixCount: Int = 0
//
//    func createChild(_ character: Character) -> TrieNode {
//        let node = TrieNode()
//        children[character] = node
//
//        return node
//    }
//
//    func getOrCreateChild(_ character: Character) -> TrieNode {
//        if let child = children[character]{
//            return child
//        }
//        else{
//            return createChild(character)
//        }
//    }
//}
//
//class Trie {
//    var root = TrieNode()
//    func insert(_ word: String){
//        insert(characters: Array(word.characters))
//    }
//
//    func insert(characters: [Character]) {
//        var node = root
//        node.prefixCount += 1
//        for character in characters {
//            node = node.getOrCreateChild(character)
//            node.prefixCount += 1
//        }
//        node.isFinal = true //
//    }
//
//    /*func query(_ word: String) -> Bool {
//        return query(characters: Array(word.characters))
//    }
//
//    func query(characters: [Character]) -> Bool {
//        var node : TrieNode? = root
//
//        for character in characters {
//            node = node?.children[character]
//            if node == nil {
//                return false
//            }
//        }
//        return node!.isFinal
//    }
//
//    func getNodeSequence(characters: [Character]) -> [(Character, TrieNode)] {
//        var node : TrieNode? = root
//        var nodes:[(Character,TrieNode)] = []
//
//        var tup = (Character("@"),node!)  // just a random character
//        // it's not going to be used
//        nodes.append(tup)
//
//        for character in characters {
//            node = node?.children[character]
//            if node == nil {
//                return nodes
//            }
//            var tup = (character, node!)
//            nodes.append(tup)
//        }
//
//        return nodes
//    }
//
//    func remove(_ word: String){
//        remove(characters: Array(word.characters))
//    }
//
//    func remove(characters: [Character]) {
//        var charactersNodes:[(Character,TrieNode)] = getNodeSequence(characters: characters)
//        if charactersNodes.count != characters.count + 1 {
//            return
//        }
//
//        for i in 0..<charactersNodes.count {
//            charactersNodes[i].1.prefixCount -= 1
//            if charactersNodes[i].1.prefixCount == 0 {
//                if i != 0 {
//                    charactersNodes[i - 1].1.children.removeValue(forKey: charactersNodes[i].0)
//                    return // we completely deleted the reference to an entire sequence of nodes
//                    // swift will delete those nodes from memory
//                }
//            }
//        }
//        charactersNodes[charactersNodes.count - 1].1.isFinal = false
//    }*/
//
//
//    func wordsSamePrefix(_ word: String) -> Int {
//        return wordsSamePrefix(characters: Array(word.characters))
//    }
//
//    func wordsSamePrefix(characters: [Character]) -> Int {
//        var node : TrieNode? = root
//        for character in characters {
//            node = node?.children[character]
//            if node == nil {
//                return 0
//            }
//        }
//        return node!.prefixCount
//    }
//
//
//}
//
//let trie = Trie()
//trie.insert("roll")
//trie.insert("round")
//trie.insert("Pranoti")
//trie.insert("Pet")
////print(trie.query("roll"))
//trie.wordsSamePrefix("P")


