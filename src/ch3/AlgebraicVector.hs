module AlgebraicVector
       ( Polar2D
       , Cartesian2D
       ) where
 
data Polar2D = Polar2D Double Double
               deriving (Eq, Show)

data Cartesian2D = Cartesian2D Double Double
                   deriving (Eq, Show)
