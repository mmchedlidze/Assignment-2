//1. შექმენით array, შემდეგ პირველ და ბოლო ელემენტს გაუცვალეთ ადგილი, გამზადებული ან უკვე არსებული ფუნქციის გარეშე.  (array-ის ტიპს არაქვს მნიშვნელობა)
var countries = ["Italy", "Spain", "France", "Denmark"]
if countries.count >= 2 {
    ( countries[0], countries[countries.count-1] ) = ( countries[countries.count-1], countries [0] )
}
print ("1.", countries)

//2. შექმენით array, მასში წაშალეთ ნახევარი ელემენტები, თუ კენტი რაოდენობის იქნა დატოვეთ ნაკლები და წაშალეთ მეტი.  მაგ.: თუ იყო 11 ელემენტი 5 დატოვეთ და 6 წაშალეთ. და დაბეჭდეთ მიღებული შედეგი. (array-ის ტიპს არაქვს მნიშვნელობა)
var cities = ["London", "Paris", "Madrid", "Rome", "Milan", "Berlin", "Barcelona"]
if cities.count % 2 == 0 { 
    cities.removeFirst (cities.count / 2)
}
else { cities.removeFirst (cities.count / 2 + 1)
}
print ("2.", cities)

//3.შექმენით Int-ების array, შეავსეთ ის 0-იდან 10-ის ჩათვლით რიცხვებით. loop-ის  გამოყენებით დაშალეთ ეს array 2 array-იდ. ერთში გადაიტანეთ კენტი რიცხვები, მეორეში კი ლუწი რიცხვები, დაბეჭდეთ ორივე მიღებული array.
var numbers = [Int] ()
var odd = [Int] ()
var even = [Int] ()
while numbers.count <= 10 {
    numbers.append (numbers.count)
}
for (_, value0) in numbers.enumerated () {
    if value0 % 2 == 0 {
        odd.append (value0)
    }
    else { even.append (value0)
    }
}
print ("3.", "Odd Numbers:",odd,";", "Even Numbers:", even)

//4. შექმენით Double-ების array, შეავსეთ ის თქვენთვის სასურველი რიცხვებით.  loop-ის გამოყენებით იპოვეთ ყველაზე დიდი რიცხვი ამ array-ში.
var decimals = [2.15, 1.25, 10.05, 7.9]
var maxNumber: Double = 0
for value1 in decimals {
    if value1 > maxNumber {
        maxNumber = value1
    }
}
print ("4.",maxNumber)

//5. შექმენით ორი Int-ების array, შეავსეთ პირველი array 8, 4, 9, 9, 0, 2, და მეორე array 1, 0, 9, 2, 3, 7, 0, 1 ამ რიცხვებით. გააერთიანეთ ეს ორი array ერთ დასორტილ array-ში, ანუ შედეგი უნდა მიიღოთ ასეთი: 0, 0, 0, 1, 1, 2, 2, 3, 4, 7, 8, 9, 9, არ გამოიყენოთ sorted() ან რაიმე სხვა უკვე არსებული მეთოდი swift-იდან. დაბეჭდეთ მიღებული დასორტილი array.

var array1 = [8,4,9,9,0,2]
var array2 = [1,0,9,2,3,7,0,1]
var combinedArray = array1 + array2

for i in 0..<combinedArray.count {
    var n = i
    let value = combinedArray[i]
    
    while n > 0 && value < combinedArray[n - 1] {
        combinedArray[n] = combinedArray[n - 1]
        n -= 1
    }
    
    combinedArray[n] = value
}
print ("5." ,combinedArray)

//6. შექმენით String ტიპის ცვლადი და შეამოწმეთ არის თუ არა ყველა ჩარაქტერი ამ სტრინგში უნიკალური. გამოიყენეთ Set-ი ამ თასკის შესასრულებლად.
let word = "experience"
var characters = Set<Character>()
for character in word { characters.insert (character)
}
if characters.count == word.count { 
    print ("6.", "Is unique")
} else {
    print ("6.", "Is not unique")
}

//7. შექმენით ორი Int-ების Set. გამოიყენეთ მათზე Set-ის მეთოდები როგორიცაა: union, intersection და difference. დაბეჭდეთ შედეგები.
let times3: Set = [3,6,9,12,15,18]
let times9: Set = [9,18,27,36]

print ("7.", "Union:", times3.union (times9),
       "Intersaction:", times3.intersection (times9),
       "Difference:", times3.subtracting (times9) )

//8. შექმენით ორი String-ის Set. შეამოწმეთ არის თუ არა პირველი String-ის Set, მეორეს sub-Set-ი. დაბეჭდეთ შედეგი.
let names1: Set = ["Ana","Nino","Salome","Giorgi"]
let names2: Set = ["Ana","Nino","Salome","Giorgi","Luka"]
if names1.intersection(names2) == names1 {
    print("8.","Set 1 is sub-set of Set 2")
} else {
    print("8.","Set 1 is not sub-set of Set 2")
}

//9. შექმენით array, შეავსეთ ისინი ელემენტებით. შეამოწმეთ და დაბეჭდეთ: array-ში ყველა ელემენტი განსხვავებულია ან array შეიცავს მსგავს ელემენტებს
let seasons = ["winer","spring","summer","fall"]
let seasonsSet = Set (seasons)
if seasons.count == seasonsSet.count {
    print ("9.", "Array-ში ყველა ელემენტი განსხვავებულია")
} else {
    print ("9.", "Array შეიცავს მსგავს ელემენტებს")
}

//10. შექმენით Dictionary, სადაც იქნება ფილმის სახელები და მათი რეიტინგები, რეიტინგი (0-10). დაამატეთ მინიმუმ 5 ფილმი, ამის შემდეგ გამოთვალეთ ამ Dictionary-ში არსებული ფილმების საშვალო რეიტინგი. დაბეჭდეთ მიღებული შედეგი.
let imdb = ["The Shawshank Redemption": 9.3, "The Godfather": 9.2, "The Dark Knight": 9.0, "12 Angry Men": 9.0, "Schindler's List": 9.0]
var average = 0.0
for rating in imdb.values { average += rating / Double(imdb.count)
}
print ("10.",average)
