$texRoot = ".\latex"
$mainTex = Join-Path -Path $texRoot -ChildPath "main.tex"
$outputDir = "./latex/test-cases"

New-Item -ItemType Directory -Force -Path $outputDir
New-Item -ItemType File -Force -Path $mainTex

$inputs = @()

$skipped = "README.md", "TOC.md"

Get-ChildItem -Path "." -Recurse -Filter "*.md" | ForEach-Object {
    # Execute pandoc command for each .md file
    $inputFile = $_.FullName
    $fileName = Split-Path -Leaf $inputFile
    if ($fileName -in $skipped) {
        return
    }
    $outputFile = $fileName -replace '\.md$', '.tex'  # Replace extension with .tex
    $inputs += "\input{test-cases/$($outputFile)}"
    $fullOutPath = Join-Path -Path $outputDir -ChildPath $outputFile
    # Run pandoc command
    pandoc -f markdown -t latex $inputFile -o $fullOutPath
}

foreach ($input in $inputs) {
    Add-Content -Path $mainTex -Value $input
}