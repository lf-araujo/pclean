import os 

let extensions = [".rmd", ".R", ".r", ".Rmd", ".txt"]

if dirExists("../reports"):
  for file in walkFiles("*"):
    var (_, _, ext) = splitFile(file)
    if ext in extensions:
      echo file
    else:
      moveFile(file, "../reports/" & $file)
else:
  echo "/reports folder not found"

