import System.Environment
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height  
    | bmi <= 18.5 = "You're underweight, you emo, you!"  
    | bmi <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | bmi <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise                 = "You're a whale, congratulations!"
    where bmi = weight / height  ^ 2
main = do 
	[weight,height] <- getArgs
	putStrLn (bmiTell (read weight :: Float) (read height :: Float))  
