import Cocoa

// get hash value

let jevonHashValue = "Jevon".hashValue
print(jevonHashValue)

// e.g. 5 slots in an array

let index = abs(jevonHashValue % 5) // given an array count of 5
print(index)
// implementation

struct HashTable<Key: Hashable, Value> {
    // element is the key, value pair
    
    private typealias Element = (key: Key, value: Value)
    
    // chain
    private typealias Bucket = [Element]
    
    // array of buckets that will make up the hash table
    private var buckets: [Bucket]
    
    // keep track of items in hash table
    private var itemCount = 0
    public var count: Int { // read-only property
        return itemCount
    }
    
    
    //initializer
    init(capacity: Int) {
        buckets = Array<Bucket>(repeating:[], count: capacity)
    }
    // adding a subscript functionality
    public subscript(key: Key) -> Value? {
        get {
            return value(forKey: key)
        } set {
            if let value = newValue {
                // updating
                updateValue(value: value, forKey: key)
            } else {
                //deleting
                removeValue(forKey: key)
            }
        }
        
    }
    
    
    // this method gets the key a slot in the buckets array
    private func index(forKey key: Key) -> Int {
        return abs(key.hashValue) % buckets.count
    }
    
    // search
    
    public func value(forKey key: Key) -> Value? {
        let index = self.index(forKey: key)
        
        // search for key
        for element in buckets[index] {
            if element.key == key {
                return element.value
            }
        }
        // key not found
        return nil
    }
    
    // update
    public mutating func updateValue(value: Value, forKey key: Key) -> Value? {
        // get index for key
        let index = self.index(forKey: key)
        
        // check if value exist in hash table
        for (i, element) in buckets[index].enumerated() {
            if element.key == key {
                buckets[index][i].value = value
                return element.value
            }
        }
        // if element was not found, now add it to the hash table
        buckets[index].append((key: key, value: value))
        return nil
    }
    // delete
    
    public mutating func removeValue(forKey key: Key) -> Value? {
        let index = self.index(forKey: key)
        
        // search for and remove element
        for (i, element) in buckets[index].enumerated() {
            if element.key == key {
                buckets[index].remove(at: i) // remove element in chain
                itemCount -= 1
                return element.value
            }
        }
        // element does not exist
        return nil
    }
}
// instantiate a hash table
var hashTable = HashTable<String, String>(capacity: 4)
print(hashTable)
// insert
hashTable["5.1"] = "Full Stack Web"
print(hashTable)
// update
hashTable["5.1"] = "Full Stack Web Development"
print(hashTable)
// searching a hashTable
if let cohort = hashTable["5.2"] {
print("Cohort is a part of Pursuit")
} else {
print("Does not exist, then add it")
    hashTable["5.2"] = "Full Stack Web - Nights"
    print(hashTable)
}

// delete


