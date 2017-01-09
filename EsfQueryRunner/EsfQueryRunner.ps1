Function Start-EsfQueryRunner {
    $elasticSearch = "C:\Program Files\elasticsearch-5.1.1\"
    $elasticSearchConfig = "$PSScriptRoot\EsfQueryRunnerConfig\"

    start-process -FilePath (Resolve-Path "$elasticSearch\bin\elasticsearch.bat") -ArgumentList "-Epath.conf=$elasticSearchConfig"
    Start-Sleep 10
}

Start-EsfQueryRunner