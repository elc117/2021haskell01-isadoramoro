import Text.Printf

-- String inicial do SVG
svgBegin :: Float -> Float -> String
svgBegin w h = printf "<svg width='%.2f' height='%.2f' xmlns='http://www.w3.org/2000/svg'>\n" w h 

-- String final do SVG
svgEnd :: String
svgEnd = "</svg>"

svgCircle :: Int -> Int -> Int -> String -> String 
svgCircle x y r style = 
  printf "<circle cx='%d' cy='%d' r='%d' fill='%s' />\n" x y r style

-- Gera SVG com 2 círculos, um verde e um vermelho, com 0.4 de opacidade.
-- A opacidade pode não ser suportada em alguns visualizadores de SVG.
svgAll :: String
svgAll = 
  svgBegin 100 100 ++ 
  (svgCircle 40 30 15 "rgb(105, 14, 30, 0.6)") ++ 
  (svgCircle 60 30 15 "rgb(105, 14, 30, 0.6)") ++ 
  (svgCircle 70 50 15 "rgb(105, 14, 30, 0.6)") ++ 
  (svgCircle 60 70 15 "rgb(105, 14, 30, 0.6)") ++ 
  (svgCircle 40 70 15 "rgb(105, 14, 30, 0.6)") ++ 
  (svgCircle 30 50 15 "rgb(105, 14, 30, 0.6)") ++ 
  (svgCircle 50 50 10 "rgb(220, 230, 50, 1.0)") ++ 
  svgEnd

main :: IO ()
main = do
  writeFile "circles.svg" svgAll
