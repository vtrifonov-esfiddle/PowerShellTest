Function Start-EsfQueryRunner {
    $elasticSearch = "C:\Program Files\elasticsearch-5.1.1\bin\elasticsearch.bat"
    $elasticSearchConfig = "$PSScriptRoot\EsfQueryRunnerConfig\"

    start-process -FilePath $elasticSearch -ArgumentList "-Epath.conf=$elasticSearchConfig"
    Start-Sleep 10
    echo "waited for input idle"
}

Start-EsfQueryRunner