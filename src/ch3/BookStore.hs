-- exporting these types from the BookStore module
module BookStore
       ( BookInfo
       , MagazineInfo
       , myInfo
       ) where

-- BookInfo is a type constructor, Book is a value constructor
-- We use type constructor while creating types, as shown below
-- and use value constructor while creating values.
data BookInfo = Book Int String [String]
              deriving (Show)

data MagazineInfo = Magazine Int String [String]
                    deriving (Show)

-- type synonyms
type CustomerID = Int
type ReviewBody = String
type BookRecord = (BookInfo, BookReview)
type CardHolder = String
type CardNumber = String
type Address = [String]

-- Using type contstructor to create a new type
data BookReview = BookReview BookInfo CustomerID ReviewBody

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CashOnDelivery
                 | Invoice CustomerID
                 deriving (Show)
                  
-- Using value constructor to create a new value                             
myInfo = Book 9780135072455 "Algebra of Programming"
         ["Richard Bird", "Oege de Moor"]


bookId (Book id _ _) = id

-- Using Record Syntax to create a new data type.
-- Notice that the type and value constructor of this are same -- Customer
-- By using this syntax, we get the accessor functions for free.
data Customer = Customer {
  customerID :: CustomerID
  , customerName :: String
  , customerAddress :: Address
  } deriving Show

me = Customer 1235209134 "Tushar" ["My Address"]

