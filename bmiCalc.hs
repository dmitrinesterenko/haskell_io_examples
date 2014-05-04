import System.Environment
bmiTell :: (RealFloat a) => a -> a -> String
bmiTell weight height  
    | weight / height ^ 2 <= 18.5 = "You're underweight, you emo, you!"  
    | weight / height ^ 2 <= 25.0 = "You're supposedly normal. Pffft, I bet you're ugly!"  
    | weight / height ^ 2 <= 30.0 = "You're fat! Lose some weight, fatty!"  
    | otherwise                 = "You're a whale, congratulations!"

main = do 
	[weight,height] <- getArgs
	putStrLn (bmiTell (read weight :: Float) (read height :: Float))  
