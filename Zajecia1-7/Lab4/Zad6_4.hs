quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort xs =
  quickSort left ++ [mid] ++ quickSort right
  where
    (left, mid, right) = partition xs

partition :: (Ord a) => [a] -> ([a], a, [a])
partition [x] = ([], x, [])
partition xs =
  ( lessThanPivot,
    head notLessThanPivot,
    tail notLessThanPivot
  )
  where
    pivotValue = head xs -- can select a different pivot
    lessThanPivot = filter (< pivotValue) xs
    notLessThanPivot = filter (>= pivotValue) xs