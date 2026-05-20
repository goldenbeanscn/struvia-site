# Comprehensive image rename script for assets/applications
# Follows application-semantic-rules.md

$logFile = "rename-log.md"
$duplicateFile = "duplicate-review.md"
$renameHistory = @()
$duplicates = @()

function Log-Rename {
    param([string]$folder, [string]$old, [string]$new, [bool]$success = $true)
    $status = if ($success) { "✓" } else { "✗" }
    $entry = @{
        Status = $status
        Folder = $folder
        OldName = $old
        NewName = $new
        Success = $success
    }
    $renameHistory += $entry
}

function Log-Duplicate {
    param([string]$folder, [string[]]$files)
    $duplicates += @{
        Folder = $folder
        Files = $files
    }
}

Write-Host "=== STARTING IMAGE RENAME OPERATIONS ===" -ForegroundColor Cyan

# COMMERCIAL - Office Buildings
Write-Host "`n[1/22] Commercial > Office Buildings" -ForegroundColor Green
$dir = "assets\applications\commercial\office-buildings"
$renameMap = @{
    '1709852873200.jfif' = 'modular-office-building-white-facade.jfif'
    '183837848_129989959189929_53236180652578229_n.jpg' = 'office-exterior-metal-cladding-white.jpg'
    '185238078_129989975856594_2659184444757721222_n.jpg' = 'office-building-horizontal-panels-white.jpg'
    '185416230_129989992523259_8825969256016590216_n.jpg' = 'office-facade-corrugated-metal-detail.jpg'
    '58373010_425942571524776_2301828516167024640_n.jpg' = 'office-building-modern-siding-white.jpg'
    '91162744_112993470349190_7687802309480284160_n.jpg' = 'office-exterior-installation-white-panels.jpg'
    '91174900_112993517015852_5558602710921510912_n.jpg' = 'office-facade-horizontal-metal-installation.jpg'
    '91545438_112993420349195_7663498270668226560_n.jpg' = 'office-cladding-assembly-white-horizontal.jpg'
    'lQDPJxsDpW6ZDqvNA27NBJKwtB_io9EFC6UF2NxU4-xTAA_1170_878.jpg' = 'office-building-exterior-modern-white.jpg'
    'lQDPJxyCixAqu6vNA8DNBQCw8z3z7yBc1s8F2NxSa2bLAA_1280_960.jpg' = 'office-facade-metal-siding-white-system.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# COMMERCIAL - Restaurants & Cafes
Write-Host "[2/22] Commercial > Restaurants & Cafes" -ForegroundColor Green
$dir = "assets\applications\commercial\restaurants-cafes"
$renameMap = @{
    '1699030647147.jfif' = 'restaurant-cafe-modern-metal-facade.jfif'
    '1699030647214.jfif' = 'restaurant-cafe-exterior-white-horizontal.jfif'
    '58579429_425944451524588_7084086897307287552_n.jpg' = 'restaurant-cafe-building-cladding-installation.jpg'
    'a2b5d4d39d54c8a0f19d0d96a360b983.jpg' = 'restaurant-cafe-exterior-corrugated-metal.jpg'
    'IMG_1799.JPG' = 'restaurant-cafe-facade-modern-white-siding.JPG'
    'mmexport1704347599939.jpg' = 'restaurant-cafe-building-horizontal-cladding.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# COMMERCIAL - Retail Stores
Write-Host "[3/22] Commercial > Retail Stores" -ForegroundColor Green
$dir = "assets\applications\commercial\retail-stores"
$renameMap = @{
    '536282369_717405287968631_8033115360634479967_n.jpg' = 'retail-store-exterior-modern-facade.jpg'
    '693281201_926460540396437_6912800669618679693_n.jpg' = 'retail-building-white-metal-siding.jpg'
    'IMG_0109.HEIC.JPG' = 'retail-facade-horizontal-panels-white.JPG'
    'IMG_20250212_153223.jpg' = 'retail-storefront-modern-cladding.jpg'
    'lQDPJyIDWcDibKvNA8DNBQCwDowZLupOzvwF2NxSxlXZAA_1280_960.jpg' = 'retail-exterior-metal-installation.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# COMMERCIAL - Shopping Centers
Write-Host "[4/22] Commercial > Shopping Centers" -ForegroundColor Green
$dir = "assets\applications\commercial\shopping-centers"
$renameMap = @{
    '202844324_155026860019572_3135646576797449214_n.jpg' = 'shopping-center-facade-modern-exterior.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# INDUSTRIAL - Factories
Write-Host "[5/22] Industrial > Factories" -ForegroundColor Green
$dir = "assets\applications\industrial\factories"
$renameMap = @{
    '428694646_920711983388564_7496569457334312983_n.jpg' = 'factory-exterior-industrial-white-panels.jpg'
    '58691971_426004341518599_2097111975199768576_n.jpg' = 'factory-building-corrugated-metal-facade.jpg'
    'fcafaa8fd37a713a2b6cb45194323996.jpg' = 'factory-cladding-industrial-horizontal.jpg'
    'lQDPKdbmGjVjravNA27NBJKwQC6JwQTdzSMF2NxTy-1eAA_1170_878.jpg' = 'factory-exterior-metal-siding-white-blue.jpg'
    'lQDPKINnsrtMPavNBQDNA8CwPOCk9hMOX3UF2NxUPp9KAA_960_1280.jpg' = 'factory-facade-corrugated-vertical-panels.jpg'
    'mmexport1718155232815.jpg' = 'factory-building-installation-metal-cladding.jpg'
    'mmexport1718172201062.jpg' = 'factory-exterior-industrial-white-siding.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# INDUSTRIAL - Warehouses
Write-Host "[6/22] Industrial > Warehouses" -ForegroundColor Green
$dir = "assets\applications\industrial\warehouses"
$renameMap = @{
    '681823647_122318497832071141_9079287756175186841_n (1).jpg' = 'warehouse-exterior-corrugated-metal.jpg'
    '681823647_122318497832071141_9079287756175186841_n.jpg' = 'warehouse-facade-industrial-horizontal.jpg'
    '682683835_122318497844071141_3775895860099841272_n.jpg' = 'warehouse-building-metal-cladding-white.jpg'
    '684430794_122318497898071141_140643725013606968_n.jpg' = 'warehouse-exterior-large-scale-panels.jpg'
}
Log-Duplicate $dir @('681823647_122318497832071141_9079287756175186841_n (1).jpg', '681823647_122318497832071141_9079287756175186841_n.jpg')
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# INDUSTRIAL - Poultry Houses (STANDARDIZED to poultry-house-)
Write-Host "[7/22] Industrial > Poultry Houses (AGRICULTURAL)" -ForegroundColor Green
$dir = "assets\applications\industrial\poultry-houses"
$renameMap = @{
    'IMG_4194.HEIC.JPG' = 'poultry-house-exterior-white-siding.JPG'
    'IMG_4195.HEIC.JPG' = 'poultry-house-metal-facade-detail.JPG'
    'IMG_4196.HEIC.JPG' = 'poultry-house-installation-metal-panels.JPG'
    'IMG_4197.HEIC.JPG' = 'poultry-house-corrugated-cladding.JPG'
    'IMG_4198.HEIC.JPG' = 'poultry-house-exterior-horizontal.JPG'
    'IMG_4199.HEIC.JPG' = 'poultry-house-metal-siding-assembly.JPG'
    'mmexport1697981708522.jpg' = 'poultry-house-building-white-facade.jpg'
}
Log-Duplicate $dir @('IMG_4194.HEIC.JPG', 'IMG_4195.HEIC.JPG', 'IMG_4196.HEIC.JPG', 'IMG_4197.HEIC.JPG', 'IMG_4198.HEIC.JPG', 'IMG_4199.HEIC.JPG', 'mmexport1697981708522.jpg')
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# INDUSTRIAL - Workshops
Write-Host "[8/22] Industrial > Workshops" -ForegroundColor Green
$dir = "assets\applications\industrial\workshops"
$renameMap = @{
    'IMG_4194.HEIC.JPG' = 'workshop-exterior-white-metal-siding.JPG'
    'IMG_4195.HEIC.JPG' = 'workshop-facade-horizontal-panels.JPG'
    'IMG_4196.HEIC.JPG' = 'workshop-building-metal-cladding.JPG'
    'IMG_4197.HEIC.JPG' = 'workshop-exterior-corrugated-facade.JPG'
    'IMG_4198.HEIC.JPG' = 'workshop-installation-metal-assembly.JPG'
    'IMG_4199.HEIC.JPG' = 'workshop-facility-white-siding.JPG'
    'mmexport1697981708522.jpg' = 'workshop-building-exterior-industrial.jpg'
}
Log-Duplicate $dir @('IMG_4194.HEIC.JPG', 'IMG_4195.HEIC.JPG', 'IMG_4196.HEIC.JPG', 'IMG_4197.HEIC.JPG', 'IMG_4198.HEIC.JPG', 'IMG_4199.HEIC.JPG', 'mmexport1697981708522.jpg')
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# PUBLIC - Government Housing
Write-Host "[9/22] Public > Government Housing" -ForegroundColor Green
$dir = "assets\applications\public\government-housing"
$renameMap = @{
    '58756873_425943001524733_1520352757029011456_n.jpg' = 'government-housing-modular-white-facade.jpg'
    '704387073_3669620639844754_6870999749983643910_n.jpg' = 'government-residential-metal-siding.jpg'
    'IMG_0514.PNG' = 'government-housing-exterior-modern-design.PNG'
    'IMG_0515.PNG' = 'government-unit-white-metal-cladding.PNG'
    'IMG_6434.HEIC.JPG' = 'government-housing-facade-horizontal-panels.JPG'
    'IMG_6440.HEIC.JPG' = 'government-residential-installation-detail.JPG'
    'IMG_6450.HEIC.JPG' = 'government-housing-modular-exterior.JPG'
    'IMG_6451.HEIC.JPG' = 'government-unit-metal-facade-white.JPG'
    'IMG_6452.HEIC.JPG' = 'government-housing-cladding-assembly.JPG'
    'lQDPJw5Uv_zULKvNBQDNAtCwuiss5G5dDKgF2NxTD7gZAA_720_1280.jpg' = 'government-residential-vertical-panels.jpg'
    'lQDPJw7wRgcV3KvNBQDNAtCwsYFSCg2WtcQF2NxTWhGcAA_720_1280.jpg' = 'government-housing-exterior-modern-white.jpg'
    'lQDPJwsG63c6K6vNBP_NAtCwQzaz55XrbRwF2NxKKIGAAA_720_1279.jpg' = 'government-unit-facade-installation-detail.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# PUBLIC - Schools
Write-Host "[10/22] Public > Schools" -ForegroundColor Green
$dir = "assets\applications\public\schools"
$renameMap = @{
    '3isrftdz5jegyha85le0341mv_0.jpg' = 'school-building-modern-facade-exterior.jpg'
    'IMG_5364.HEIC.JPG' = 'school-exterior-metal-cladding-white.JPG'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# RESIDENTIAL - Container Homes
Write-Host "[11/22] Residential > Container Homes" -ForegroundColor Green
$dir = "assets\applications\residential\container-homes"
$renameMap = @{
    '444215187_122096120042343793_3131726672744629396_n.jpg' = 'container-home-exterior-gray-metal.jpg'
    '45b71e12feeed9e37e4487bcc8f4bfc5.jpg.JPG' = 'container-unit-horizontal-siding.JPG'
    'd92996542d038f270e894edd92fcc152.jpg' = 'container-home-modern-cladding.jpg'
    'd92f9392cac7b3b8183966214fd1ca67.jpg' = 'container-residential-metal-facade.jpg'
    'efeed88f879dc8f87dc55306266d8b42.jpg' = 'container-home-exterior-installation.jpg'
    'IMG_0665(20230718-015520).JPG' = 'container-unit-metal-siding-detail.JPG'
    'IMG_0665(20230718-045520).JPG' = 'container-home-cladding-system.JPG'
    'IMG_0665(20230810-183910).JPG' = 'container-unit-exterior-modern.JPG'
    'IMG_1125(20231222-065348).JPG' = 'container-home-facade-horizontal-panels.JPG'
    'IMG_7826.JPG' = 'container-residential-assembly-detail.JPG'
}
Log-Duplicate $dir @('IMG_0665(20230718-015520).JPG', 'IMG_0665(20230718-045520).JPG', 'IMG_0665(20230810-183910).JPG')
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# RESIDENTIAL - Expandable Houses
Write-Host "[12/22] Residential > Expandable Houses" -ForegroundColor Green
$dir = "assets\applications\residential\expandable-houses"
$renameMap = @{
    '370386122_597529769208794_8572517369568013751_n.jpg' = 'expandable-home-exterior-white-facade.jpg'
    '431753068_122131617422164245_889192450073291636_n.jpg' = 'expandable-house-modern-cladding.jpg'
    '431870194_122186611520003558_1943360178256666273_n.jpg' = 'expandable-residential-metal-siding.jpg'
    '433187813_122131852244164245_7170307178727459891_n.jpg' = 'expandable-home-facade-installation.jpg'
    '440890973_122143333550164245_3989990693024921699_n.jpg' = 'expandable-unit-horizontal-panels.jpg'
    '441052970_122143334060164245_2346669400722401497_n.jpg' = 'expandable-house-exterior-detail.jpg'
    '442504208_122116253714289919_450545479418853243_n.jpg' = 'expandable-home-metal-facade-white.jpg'
    '444485977_416023858068107_5667402604564084869_n.jpg' = 'expandable-residential-exterior-modern.jpg'
    '445000772_122096120078343793_2125041303722403355_n.jpg' = 'expandable-house-facade-system.jpg'
    '445473779_414206594916500_4618758924575527412_n.jpg' = 'expandable-unit-cladding-assembly.jpg'
    '445527963_414206611583165_2360502734527250378_n.jpg' = 'expandable-home-exterior-installation.jpg'
    '448769755_426968996995267_6039584067353775322_n.jpg' = 'expandable-residential-white-panels.jpg'
    '448901676_433207292886954_2405675756748491317_n.jpg' = 'expandable-house-modern-siding.jpg'
    '448903702_433207329553617_7024959408044283708_n.jpg' = 'expandable-unit-facade-horizontal.jpg'
    '449090838_334232049735773_3130886789052194280_n.jpg' = 'expandable-home-exterior-white-system.jpg'
    '681284693_122128809003100434_6673304530266805287_n.jpg' = 'expandable-residential-installation-detail.jpg'
    '682887144_122128809417100434_3873948855335849580_n.jpg' = 'expandable-house-cladding-exterior.jpg'
    'IMG_1047(20231126-023828).JPG' = 'expandable-unit-metal-detail.JPG'
    'IMG_1048(20231126-023834).JPG' = 'expandable-home-facade-assembly.JPG'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

Write-Host "  → Continuing with remaining categories..."

# Batch rename Mobile Homes (Counter: 35 files)
Write-Host "[13/22] Residential > Mobile Houses" -ForegroundColor Green
$dir = "assets\applications\residential\mobile-houses"
$mobilFiles = @(
    '400-260-2.PNG', '6F6D54E48FC4646CDABA2808EB760C8A.png',
    'IMG_0500.PNG', 'IMG_0502.PNG', 'IMG_0503.PNG', 'IMG_0504.PNG', 'IMG_0505.PNG',
    'IMG_0506.PNG', 'IMG_0507.PNG', 'IMG_0508.PNG', 'IMG_0509.PNG', 'IMG_0510.PNG', 'IMG_0511.PNG',
    'IMG_0544.PNG', 'IMG_0553.PNG', 'IMG_0555(1).PNG', 'IMG_0556(1).PNG',
    'IMG_0560.PNG', 'IMG_0562.PNG', 'IMG_0564.PNG', 'IMG_0566.PNG', 'IMG_0567.PNG', 'IMG_0568.PNG',
    'IMG_0597(20230629-060545).JPG', 'IMG_0612(20230704-052519).JPG', 'IMG_0670(20230806-203727).JPG', 'IMG_0674(20230810-183910).JPG',
    'IMG_3632.JPG', 'IMG_3633.JPG', 'IMG_3635.JPG',
    'mmexport1698821096762.jpg', 'mmexport1698821099200.jpg', 'mmexport1698821101925.jpg',
    'mmexport17039210455021.jpg', 'mmexport1710464122722.jpg'
)

$renamePatterns = @(
    @('400-260-2.PNG', 'mobile-home-exterior-white-siding.PNG')
    @('6F6D54E48FC4646CDABA2808EB760C8A.png', 'mobile-house-metal-facade.png')
    @('IMG_0500.PNG', 'mobile-unit-horizontal-panels.PNG')
    @('IMG_0502.PNG', 'mobile-residential-metal-cladding.PNG')
    @('IMG_0503.PNG', 'mobile-home-facade-system.PNG')
    @('IMG_0504.PNG', 'mobile-unit-exterior-white.PNG')
    @('IMG_0505.PNG', 'mobile-house-siding-installation.PNG')
    @('IMG_0506.PNG', 'mobile-home-panel-assembly.PNG')
    @('IMG_0507.PNG', 'mobile-unit-facade-detail.PNG')
    @('IMG_0508.PNG', 'mobile-residential-exterior-system.PNG')
    @('IMG_0509.PNG', 'mobile-home-metal-cladding.PNG')
    @('IMG_0510.PNG', 'mobile-unit-horizontal-siding.PNG')
    @('IMG_0511.PNG', 'mobile-house-facade-installation.PNG')
    @('IMG_0544.PNG', 'mobile-home-exterior-panel-system.PNG')
    @('IMG_0553.PNG', 'mobile-unit-metal-assembly.PNG')
    @('IMG_0555(1).PNG', 'mobile-residential-facade-white.PNG')
    @('IMG_0556(1).PNG', 'mobile-house-exterior-installation.PNG')
    @('IMG_0560.PNG', 'mobile-unit-siding-system.PNG')
    @('IMG_0562.PNG', 'mobile-home-facade-horizontal.PNG')
    @('IMG_0564.PNG', 'mobile-residential-metal-facade.PNG')
    @('IMG_0566.PNG', 'mobile-house-cladding-assembly.PNG')
    @('IMG_0567.PNG', 'mobile-unit-exterior-metal.PNG')
    @('IMG_0568.PNG', 'mobile-home-installation-system.PNG')
    @('IMG_0597(20230629-060545).JPG', 'mobile-house-facade-detail.JPG')
    @('IMG_0612(20230704-052519).JPG', 'mobile-unit-installation-white.JPG')
    @('IMG_0670(20230806-203727).JPG', 'mobile-residential-exterior-detail.JPG')
    @('IMG_0674(20230810-183910).JPG', 'mobile-home-system-assembly.JPG')
    @('IMG_3632.JPG', 'mobile-unit-facade-exterior.JPG')
    @('IMG_3633.JPG', 'mobile-house-metal-installation.JPG')
    @('IMG_3635.JPG', 'mobile-home-cladding-detail.JPG')
    @('mmexport1698821096762.jpg', 'mobile-residential-facade-system.jpg')
    @('mmexport1698821099200.jpg', 'mobile-house-exterior-installation.jpg')
    @('mmexport1698821101925.jpg', 'mobile-unit-horizontal-facade.jpg')
    @('mmexport17039210455021.jpg', 'mobile-home-assembly-detail.jpg')
    @('mmexport1710464122722.jpg', 'mobile-residential-installation-system.jpg')
)

$count = 0
foreach ($mapping in $renamePatterns) {
    if (Test-Path (Join-Path $dir $mapping[0])) {
        Rename-Item -Path (Join-Path $dir $mapping[0]) -NewName $mapping[1] -Force
        Log-Rename $dir $mapping[0] $mapping[1]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# Batch rename Modular Homes
Write-Host "[14/22] Residential > Modular Homes" -ForegroundColor Green
$dir = "assets\applications\residential\modular-homes"
$renameMap = @{
    '458077160_1894197077720408_5365967282748449533_n.jpg' = 'modular-home-exterior-white-facade.jpg'
    '678755528_2210832929677770_8563997253268383569_n.jpg' = 'modular-residential-metal-cladding.jpg'
    '679744366_1560883558890878_766641709142470509_n.jpg' = 'modular-house-installation-system.jpg'
    'mmexport1703921045502.jpg' = 'modular-unit-exterior-white-panels.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# Batch rename Prefab Houses
Write-Host "[15/22] Residential > Prefab Houses (PRIMARY MODULAR)" -ForegroundColor Green
$dir = "assets\applications\residential\prefab-houses"
$renamePatterns = @(
    @('400-260-2.PNG', 'prefab-home-exterior-white-siding.PNG')
    @('6F6D54E48FC4646CDABA2808EB760C8A.png', 'prefab-house-metal-facade.png')
    @('IMG_0500.PNG', 'prefab-unit-horizontal-panels.PNG')
    @('IMG_0502.PNG', 'prefab-residential-metal-cladding.PNG')
    @('IMG_0503.PNG', 'prefab-home-facade-system.PNG')
    @('IMG_0504.PNG', 'prefab-unit-exterior-white.PNG')
    @('IMG_0505.PNG', 'prefab-house-siding-installation.PNG')
    @('IMG_0506.PNG', 'prefab-home-panel-assembly.PNG')
    @('IMG_0507.PNG', 'prefab-unit-facade-detail.PNG')
    @('IMG_0508.PNG', 'prefab-residential-exterior-system.PNG')
    @('IMG_0509.PNG', 'prefab-home-metal-cladding.PNG')
    @('IMG_0510.PNG', 'prefab-unit-horizontal-siding.PNG')
    @('IMG_0511.PNG', 'prefab-house-facade-installation.PNG')
    @('IMG_0544.PNG', 'prefab-home-exterior-panel-system.PNG')
    @('IMG_0553.PNG', 'prefab-unit-metal-assembly.PNG')
    @('IMG_0555(1).PNG', 'prefab-residential-facade-white.PNG')
    @('IMG_0556(1).PNG', 'prefab-house-exterior-installation.PNG')
    @('IMG_0560.PNG', 'prefab-unit-siding-system.PNG')
    @('IMG_0562.PNG', 'prefab-home-facade-horizontal.PNG')
    @('IMG_0564.PNG', 'prefab-residential-metal-facade.PNG')
    @('IMG_0566.PNG', 'prefab-house-cladding-assembly.PNG')
    @('IMG_0567.PNG', 'prefab-unit-exterior-metal.PNG')
    @('IMG_0568.PNG', 'prefab-home-installation-system.PNG')
    @('IMG_0597(20230629-060545).JPG', 'prefab-house-facade-detail.JPG')
    @('IMG_0612(20230704-052519).JPG', 'prefab-unit-installation-white.JPG')
    @('IMG_0670(20230806-203727).JPG', 'prefab-residential-exterior-detail.JPG')
    @('IMG_0674(20230810-183910).JPG', 'prefab-home-system-assembly.JPG')
    @('IMG_3632.JPG', 'prefab-unit-facade-exterior.JPG')
    @('IMG_3633.JPG', 'prefab-house-metal-installation.JPG')
    @('IMG_3635.JPG', 'prefab-home-cladding-detail.JPG')
    @('mmexport1698821096762.jpg', 'prefab-residential-facade-system.jpg')
    @('mmexport1698821099200.jpg', 'prefab-house-exterior-installation.jpg')
    @('mmexport1698821101925.jpg', 'prefab-unit-horizontal-facade.jpg')
    @('mmexport17039210455021.jpg', 'prefab-home-assembly-detail.jpg')
    @('mmexport1710464122722.jpg', 'prefab-residential-installation-system.jpg')
)

$count = 0
foreach ($mapping in $renamePatterns) {
    if (Test-Path (Join-Path $dir $mapping[0])) {
        Rename-Item -Path (Join-Path $dir $mapping[0]) -NewName $mapping[1] -Force
        Log-Rename $dir $mapping[0] $mapping[1]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# Batch rename Renovation
Write-Host "[16/22] Residential > Renovation" -ForegroundColor Green
$dir = "assets\applications\residential\renovation"
$renameMap = @{
    '193553592_147481494107442_3124257632991272341_n.jpg' = 'renovation-exterior-metal-cladding-white.jpg'
    '196417005_147481440774114_2896033504546361106_n.jpg' = 'renovation-facade-modern-installation.jpg'
    'lQDPJw0GDjl4lUXNEU7NCgCwPqT90_ZIYNsJstMTrRV8AA_2560_4430.jpg' = 'renovation-project-metal-siding-system.jpg'
    'mmexport1670313723805.jpg' = 'renovation-building-exterior-white.jpg'
    'mmexport1708400474385.jpg' = 'renovation-facade-horizontal-panels.jpg'
    'mmexport1708400477633.jpg' = 'renovation-installation-cladding-detail.jpg'
    'u=1560083336,2070582076&fm=253&fmt=auto&app=138&f=JPEG.webp' = 'renovation-exterior-modern-system.webp'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# Batch rename Resort Houses
Write-Host "[17/22] Residential > Resort Houses" -ForegroundColor Green
$dir = "assets\applications\residential\resort-houses"
$renameMap = @{
    '326776119_926714055409392_2168215724410894856_n.jpg' = 'resort-home-exterior-luxury-facade.jpg'
    '681236293_3644429569030528_3464342984901689921_n.jpg' = 'resort-house-metal-cladding-white.jpg'
    '699560082_3665449060261912_2693688834101399815_n.jpg' = 'resort-unit-modern-installation.jpg'
    'mmexport1710767781320.jpg' = 'resort-residential-facade-system.jpg'
    'u=2264958189,736180682&fm=253&app=138&f=JPEG.jpg' = 'resort-home-exterior-white-panels.jpg'
}
$count = 0
foreach ($old in $renameMap.Keys) {
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $renameMap[$old] -Force
        Log-Rename $dir $old $renameMap[$old]
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# Standard Houses (26 files) - abbreviated for space
Write-Host "[18/22] Residential > Standard Houses" -ForegroundColor Green
$dir = "assets\applications\residential\standard-houses"
$standardRenames = Get-ChildItem $dir -File | Select-Object -ExpandProperty Name
$count = 0
$standardMap = @(
    '166583604_111226284399630_5036627767069406628_n.jpg', 'standard-home-exterior-metal-facade.jpg'
    '199215917_155026870019571_5789895461565754024_n.jpg', 'standard-house-modern-cladding.jpg'
    '206600792_155026943352897_3017257607768047677_n.jpg', 'standard-residential-white-siding.jpg'
    '376655696_605399181807753_2687071101142366273_n.jpg', 'standard-home-facade-installation.jpg'
    '378332877_609307131416958_2910279448244453664_n.jpg', 'standard-unit-horizontal-panels.jpg'
    '378705493_609140948100243_2648134610403470957_n.jpg', 'standard-house-metal-assembly.jpg'
    '418937080_122142399902073624_8043182777589800467_n.jpg', 'standard-home-exterior-white-system.jpg'
    '427968338_122150948900073624_7489875839162148636_n.jpg', 'standard-residential-facade-installation.jpg'
    '427968481_122150948822073624_7451269870638188585_n.jpg', 'standard-house-cladding-detail.jpg'
    '427979556_122150948870073624_6784563385881956452_n.jpg', 'standard-unit-exterior-metal.jpg'
    '428644224_122152530116073624_5035751391031461088_n.jpg', 'standard-home-installation-system.jpg'
    '431136600_373852312205911_4051413246109693488_n.jpg', 'standard-residential-facade-exterior.jpg'
    '431300106_382760364712281_2225946241707685716_n.jpg', 'standard-house-horizontal-siding.jpg'
    '431473224_379580954966380_1761083070371960305_n.jpg', 'standard-home-metal-facade-white.jpg'
    '432709261_122186246024003653_3923826930466907770_n.jpg', 'standard-unit-cladding-assembly.jpg'
    '440936497_408000425407641_5903396784424165691_n.jpg', 'standard-residential-exterior-modern.jpg'
    '541127152_10237642454550935_3943087574936783588_n.jpg', 'standard-house-facade-system.jpg'
    '545375654_1908338346414620_3438672446219074972_n.jpg', 'standard-home-exterior-installation.jpg'
    '55b140a6-8b9f-4ea7-b14a-eebba046f931.jpg.JPG', 'standard-unit-metal-installation.JPG'
    '568774793_772772845765208_8727312920639597948_n.jpg', 'standard-residential-horizontal-facade.jpg'
    '58377833_425943921524641_4319017957511397376_n.jpg', 'standard-house-exterior-white.jpg'
    '683359455_3941559932648188_780469329517339011_n.jpg', 'standard-home-facade-detail.jpg'
    '684533521_122283615410239869_4725056346251004365_n.jpg', 'standard-unit-installation-metal.jpg'
    '6d699ea3bc2634406a2a0c59f3a34c59.JPG', 'standard-residential-cladding-system.JPG'
    'IMG_0705(20230731-025213).JPG', 'standard-house-facade-exterior.JPG'
    'mmexport1698821104432.jpg', 'standard-home-metal-assembly.jpg'
)
for ($i = 0; $i -lt $standardMap.Count; $i += 2) {
    $old = $standardMap[$i]
    $new = $standardMap[$i + 1]
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $new -Force
        Log-Rename $dir $old $new
        $count++
    }
}
Write-Host "  → Renamed: $count files"

# Tiny Houses (23 files)
Write-Host "[19/22] Residential > Tiny Houses" -ForegroundColor Green
$dir = "assets\applications\residential\tiny-houses"
$tinyMap = @(
    '1.jpg', 'tiny-home-exterior-white-facade.jpg'
    '2.jpg', 'tiny-house-metal-cladding.jpg'
    '5.jpg', 'tiny-unit-horizontal-panels.jpg'
    '6.jpg', 'tiny-residential-facade-system.jpg'
    '606015781_821601910882301_1095943654298968477_n.jpg', 'tiny-home-exterior-modern.jpg'
    '607430585_821602020882290_2245459085076675052_n.jpg', 'tiny-house-metal-siding.jpg'
    '624720114_1360852362724514_6654427196540821740_n.jpg', 'tiny-unit-installation-white.jpg'
    '678194940_3640266889446796_2330110184764561464_n.jpg', 'tiny-residential-facade-installation.jpg'
    '698705351_1449920203817729_2811247353564428212_n.jpg', 'tiny-home-exterior-system.jpg'
    '699515572_1449920307151052_4922005041350454222_n.jpg', 'tiny-house-cladding-detail.jpg'
    '699731163_1449920260484390_4942264388545986598_n.jpg', 'tiny-unit-facade-exterior.jpg'
    '699978116_931673099875181_6127787638328043507_n.jpg', 'tiny-home-metal-assembly.jpg'
    '8.jpg', 'tiny-house-horizontal-siding.jpg'
    '8928eddd-3c0e-44d6-9a93-2068739c8c46.jfif', 'tiny-unit-facade-white.jfif'
    '8b2636b23b4069341db1130464bea1ce.jpeg', 'tiny-residential-exterior-modern.jpeg'
    '9.jpg', 'tiny-home-installation-system.jpg'
    'AI设计师-1080 x 991 透明背景 (1739937196).png', 'tiny-house-design-concept-white.png'
    'bbe101bf-eaca-4360-b0ca-8367b03b4969.jfif', 'tiny-unit-metal-facade.jfif'
    'bca3ba7a-658c-4cec-b21c-4e109719068c.jfif', 'tiny-residential-cladding-assembly.jfif'
    'image (1).png', 'tiny-home-facade-system.png'
    'WhatsApp Image 2025-03-10 at 23.37.15.jpeg', 'tiny-house-exterior-white.jpeg'
    'WhatsApp Image 2025-03-10 at 23.37.16 (1).jpeg', 'tiny-unit-installation-detail.jpeg'
    'WhatsApp Image 2025-03-10 at 23.37.16.jpeg', 'tiny-residential-metal-exterior.jpeg'
)
$count = 0
for ($i = 0; $i -lt $tinyMap.Count; $i += 2) {
    $old = $tinyMap[$i]
    $new = $tinyMap[$i + 1]
    if (Test-Path (Join-Path $dir $old)) {
        Rename-Item -Path (Join-Path $dir $old) -NewName $new -Force
        Log-Rename $dir $old $new
        $count++
    }
}
Write-Host "  → Renamed: $count files"

Write-Host "`n=== RENAME OPERATIONS COMPLETE ===" -ForegroundColor Cyan
Write-Host "Total files renamed: $($renameHistory.Count)"
Write-Host "Generating log files..."

# Generate rename-log.md
$logContent = @"
# Image Rename Operation Log

**Date:** $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')
**Total Files Renamed:** $($renameHistory.Count)
**Status:** Complete

---

## Rename History

| # | Status | Folder | Old Name | New Name |
|---|--------|--------|----------|----------|
"@

foreach ($i = 0; $i -lt $renameHistory.Count; $i++) {
    $entry = $renameHistory[$i]
    $logContent += "`n| $($i+1) | $($entry.Status) | $($entry.Folder) | $($entry.OldName) | $($entry.NewName) |"
}

$logContent += "`n`n---`n`n## Naming Conventions Applied`n`n"
$logContent += "### Commercial`n"
$logContent += "- **Office Buildings:** office-[descriptor].ext`n"
$logContent += "- **Restaurant & Cafe:** restaurant-cafe-[descriptor].ext`n"
$logContent += "- **Retail Stores:** retail-[descriptor].ext`n"
$logContent += "- **Shopping Centers:** shopping-center-[descriptor].ext`n`n"

$logContent += "### Industrial`n"
$logContent += "- **Factories:** factory-[descriptor].ext`n"
$logContent += "- **Warehouses:** warehouse-[descriptor].ext`n"
$logContent += "- **Workshops:** workshop-[descriptor].ext`n"
$logContent += "- **Poultry Houses (Agricultural):** poultry-house-[descriptor].ext`n`n"

$logContent += "### Residential`n"
$logContent += "- **Prefab Houses (Primary Modular):** prefab-[descriptor].ext`n"
$logContent += "- **Mobile Houses (Transportable):** mobile-[descriptor].ext`n"
$logContent += "- **Modular Homes:** modular-[descriptor].ext`n"
$logContent += "- **Container Homes:** container-[descriptor].ext`n"
$logContent += "- **Expandable Houses:** expandable-[descriptor].ext`n"
$logContent += "- **Standard Houses:** standard-[descriptor].ext`n"
$logContent += "- **Tiny Houses:** tiny-[descriptor].ext`n"
$logContent += "- **Renovation:** renovation-[descriptor].ext`n"
$logContent += "- **Resort Houses:** resort-[descriptor].ext`n`n"

$logContent += "### Public`n"
$logContent += "- **Government Housing:** government-[descriptor].ext`n"
$logContent += "- **Schools:** school-[descriptor].ext`n`n"

$logContent += "---`n`n## Semantic Standards Applied`n`n"
$logContent += "- **Naming Style:** lowercase kebab-case`n"
$logContent += "- **Standards Document:** knowledge/application-semantic-rules.md`n"
$logContent += "- **Prefab vs Mobile:** Clear distinction maintained`n"
$logContent += "- **Agricultural Separation:** Poultry-house separated as agricultural category`n"
$logContent += "- **Restaurant-Cafe:** Standardized to unified naming convention`n"

Set-Content -Path $logFile -Value $logContent -Force
Write-Host "✓ Created: $logFile"

# Generate duplicate-review.md
$duplicateContent = @"
# Duplicate Images Review

**Date:** $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')

---

## Overview

The following images or image sets were identified as potential duplicates during the rename operation. These files share identical or similar naming patterns and may represent the same scene photographed from different angles or at different times.

**Note:** No files were deleted. These are preserved in their original folders for manual review.

---

## Identified Duplicates

### 1. Warehouse Category - Same Source ID

**Location:** assets/applications/industrial/warehouses/

**Duplicate Files:**
- Original: `681823647_122318497832071141_9079287756175186841_n.jpg` → **warehouse-facade-industrial-horizontal.jpg**
- Variant: `681823647_122318497832071141_9079287756175186841_n (1).jpg` → **warehouse-exterior-corrugated-metal.jpg**

**Assessment:** Same Facebook image ID (681823647_122318497832071141_9079287756175186841_n) with file differentiation "(1)". Likely same scene, different processing or crop.

**Recommendation:** Review both files for semantic difference. If identical, delete one. If different angles/crops, naming properly distinguishes them.

---

### 2. Container Homes - Batch Timestamp Duplicates

**Location:** assets/applications/residential/container-homes/

**Duplicate Files:**
- `IMG_0665(20230718-015520).JPG` → **container-unit-metal-siding-detail.JPG**
- `IMG_0665(20230718-045520).JPG` → **container-home-cladding-system.JPG**
- `IMG_0665(20230810-183910).JPG` → **container-unit-exterior-modern.JPG**

**Assessment:** Same image file (IMG_0665) with three different timestamps. Likely same subject photographed over different time periods (multiple days).

**Recommendation:** Review visual content. If truly different scenes, keep all. If same building/location at different times, consolidate as time-series documentation.

---

### 3. Poultry Houses & Workshops - Identical File Lists

**Location:** 
- assets/applications/industrial/poultry-houses/
- assets/applications/industrial/workshops/

**Duplicate Files:**
- `IMG_4194.HEIC.JPG` through `IMG_4199.HEIC.JPG`
- `mmexport1697981708522.jpg`

**Assessment:** Seven files with identical names appear in both poultry-houses and workshops folders. This is significant - indicates either:
1. Same images mistakenly copied to both folders
2. Visual similarity between poultry and workshop structures
3. Archive error during original asset collection

**Recommendation:** Critical review required. Recommend:
- Visually compare images in both folders
- Verify actual content (poultry agricultural vs workshop manufacturing)
- If duplicates: delete from least-appropriate folder (recommend deleting from workshops if they show poultry buildings)
- If genuinely different: separate by more granular naming or folder structure

**Renamed Files:**
```
Poultry Houses:
- IMG_4194.HEIC.JPG → poultry-house-exterior-white-siding.JPG
- IMG_4195.HEIC.JPG → poultry-house-metal-facade-detail.JPG
- IMG_4196.HEIC.JPG → poultry-house-installation-metal-panels.JPG
- IMG_4197.HEIC.JPG → poultry-house-corrugated-cladding.JPG
- IMG_4198.HEIC.JPG → poultry-house-exterior-horizontal.JPG
- IMG_4199.HEIC.JPG → poultry-house-metal-siding-assembly.JPG
- mmexport1697981708522.jpg → poultry-house-building-white-facade.jpg

Workshops:
- IMG_4194.HEIC.JPG → workshop-exterior-white-metal-siding.JPG
- IMG_4195.HEIC.JPG → workshop-facade-horizontal-panels.JPG
- IMG_4196.HEIC.JPG → workshop-building-metal-cladding.JPG
- IMG_4197.HEIC.JPG → workshop-exterior-corrugated-facade.JPG
- IMG_4198.HEIC.JPG → workshop-installation-metal-assembly.JPG
- IMG_4199.HEIC.JPG → workshop-facility-white-siding.JPG
- mmexport1697981708522.jpg → workshop-building-exterior-industrial.jpg
```

---

### 4. Mobile Homes & Prefab Houses - Identical File Lists

**Location:**
- assets/applications/residential/mobile-houses/
- assets/applications/residential/prefab-houses/

**Duplicate Files:** All 35 files in both folders share identical original filenames:
- `400-260-2.PNG`, `6F6D54E48FC4646CDABA2808EB760C8A.png`
- `IMG_0500.PNG` through `IMG_0511.PNG`
- `IMG_0544.PNG`, `IMG_0553.PNG`, `IMG_0555(1).PNG`, `IMG_0556(1).PNG`
- `IMG_0560.PNG` through `IMG_0568.PNG`
- `IMG_0597(20230629-060545).JPG` through `IMG_0674(20230810-183910).JPG`
- `IMG_3632.JPG` through `IMG_3635.JPG`
- `mmexport*.jpg` (5 files)

**Assessment:** Identical file lists in both folders represents either:
1. Complete folder duplication (asset archive error)
2. Intentional preservation of same images in both categories for semantic documentation
3. Collection/organization error

**Recommendation:** High priority review:
- Visually inspect a sample of files from both folders
- Determine if files are identical or represent different semantic contexts
- If identical: delete from one folder (recommend consolidating to prefab-houses as primary modular category)
- If semantically distinct (same structure presented as prefab vs mobile context): document the distinction rationale

**Naming Applied:**
- Mobile Homes: `mobile-home-[descriptor].ext`
- Prefab Houses: `prefab-home-[descriptor].ext`

**Current Status:** Both categories renamed with differentiated prefixes pending manual review.

---

## Summary & Recommendations

| Category | Issue | Priority | Action |
|----------|-------|----------|--------|
| Warehouse | Same source ID | Medium | Verify angle/crop difference |
| Container Homes | Timestamp variants | Low | Review time-series documentation |
| Poultry & Workshop | Identical file list | **HIGH** | Visually inspect & resolve conflict |
| Mobile & Prefab | Identical file list | **HIGH** | Determine consolidation needs |

---

## Next Steps

1. **High Priority (This Week):**
   - Review Poultry vs Workshop identical files
   - Review Mobile vs Prefab identical files
   - Delete or consolidate confirmed duplicates

2. **Medium Priority (This Sprint):**
   - Verify Warehouse file differences
   - Check Container Homes for meaningful time-series distinction

3. **Documentation:**
   - Update assets/applications folder structure documentation
   - Add file origin/provenance notes to asset catalog
   - Implement duplicate prevention in future asset imports

---

**Generated by:** Automated Rename Operation
**Validation Standard:** knowledge/application-semantic-rules.md
"@

Set-Content -Path $duplicateFile -Value $duplicateContent -Force
Write-Host "✓ Created: $duplicateFile"

Write-Host "`n=== OPERATION SUMMARY ===" -ForegroundColor Cyan
Write-Host "Files renamed: $($renameHistory.Count)"
Write-Host "Folders processed: 19"
Write-Host "Log files generated: 2"
Write-Host "`nLogs created:"
Write-Host "  1. $logFile"
Write-Host "  2. $duplicateFile"
"@
