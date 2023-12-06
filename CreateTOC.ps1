$scriptPath = Split-Path -Parent $MyInvocation.MyCommand.Definition
$rootFolder = $scriptPath
$outputFile = Join-Path $scriptPath "TOC.md"

if (Test-Path $outputFile) {
    Clear-Content $outputFile
}

function Format-FileName {
    param (
        [string]$fileName
    )
    $fileNameWithoutExtension = [System.IO.Path]::GetFileNameWithoutExtension($fileName)
    $formattedName = $fileNameWithoutExtension -replace '-', ' ' 
    return (Get-Culture).TextInfo.ToTitleCase($formattedName)
}

function Create-MarkdownLink {
    param (
        [string]$path,
        [string]$relativePath
    )
    $fileName = Split-Path $path -Leaf
    $formattedFileName = Format-FileName $fileName
    $markdownLink = "- [$formattedFileName]($relativePath)"
    Add-Content -Path $outputFile -Value $markdownLink
}

function Create-FolderHeader {
    param (
        [string]$folderPath
    )
    $relativeFolderPath = $folderPath.Substring($rootFolder.Length).Replace('\', '/')
    $folderName = Split-Path $relativeFolderPath -Leaf
    $header = "## $(Split-PascalCase $folderName)"
    Add-Content -Path $outputFile -Value ""
    Add-Content -Path $outputFile -Value $header
}

# https://gist.github.com/SteveGilham/32521c8f786078300f55#file-gistfile1-ps1
function Split-PascalCase {
    param ([string]$pascalCaseString)

    $separatedWords = $pascalCaseString -creplace '(?<!^)([A-Z][a-z]|(?<=[a-z])[A-Z])', ' $&'.Split($null)

    return $separatedWords
}

Get-ChildItem -Path $rootFolder -Recurse -Directory | ForEach-Object {
    $folderPath = $_.FullName
    $mdFiles = Get-ChildItem -Path $folderPath -Filter *.md
    if ($mdFiles.Count -gt 0) {
        Create-FolderHeader -folderPath $folderPath
        foreach ($file in $mdFiles) {
            $relativePath = $file.FullName.Substring($rootFolder.Length + 1).Replace('\', '/')
            Create-MarkdownLink -path $file.FullName -relativePath $relativePath
        }
    }
}
