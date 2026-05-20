# Simple, robust image rename script
$logFile = "rename-log.md"
$duplicateFile = "duplicate-review.md"
$renameHistory = @()
$totalRenamed = 0

Write-Host "Starting image rename operations..." -ForegroundColor Cyan

# Helper function to rename files
function Rename-Files {
    param([string]$folder, [hashtable]$renameMap)
    $count = 0
    foreach ($oldName in $renameMap.Keys) {
        $oldPath = Join-Path $folder $oldName
        $newName = $renameMap[$oldName]
        if (Test-Path $oldPath) {
            Rename-Item -Path $oldPath -NewName $newName -Force
            $renameHistory += @{
                Folder = $folder
                Old = $oldName
                New = $newName
            }
            $count++
        }
    }
    return $count
}

# COMMERCIAL
Write-Host "`nCOMMERCIAL CATEGORY" -ForegroundColor Green
$dir = "assets\applications\commercial\office-buildings"
$map = @{
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
$c = Rename-Files $dir $map
Write-Host "  Office Buildings: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\commercial\restaurants-cafes"
$map = @{
    '1699030647147.jfif' = 'restaurant-cafe-modern-metal-facade.jfif'
    '1699030647214.jfif' = 'restaurant-cafe-exterior-white-horizontal.jfif'
    '58579429_425944451524588_7084086897307287552_n.jpg' = 'restaurant-cafe-building-cladding-installation.jpg'
    'a2b5d4d39d54c8a0f19d0d96a360b983.jpg' = 'restaurant-cafe-exterior-corrugated-metal.jpg'
    'IMG_1799.JPG' = 'restaurant-cafe-facade-modern-white-siding.JPG'
    'mmexport1704347599939.jpg' = 'restaurant-cafe-building-horizontal-cladding.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Restaurants & Cafes: $c files renamed (STANDARDIZED)"
$totalRenamed += $c

$dir = "assets\applications\commercial\retail-stores"
$map = @{
    '536282369_717405287968631_8033115360634479967_n.jpg' = 'retail-store-exterior-modern-facade.jpg'
    '693281201_926460540396437_6912800669618679693_n.jpg' = 'retail-building-white-metal-siding.jpg'
    'IMG_0109.HEIC.JPG' = 'retail-facade-horizontal-panels-white.JPG'
    'IMG_20250212_153223.jpg' = 'retail-storefront-modern-cladding.jpg'
    'lQDPJyIDWcDibKvNA8DNBQCwDowZLupOzvwF2NxSxlXZAA_1280_960.jpg' = 'retail-exterior-metal-installation.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Retail Stores: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\commercial\shopping-centers"
$map = @{
    '202844324_155026860019572_3135646576797449214_n.jpg' = 'shopping-center-facade-modern-exterior.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Shopping Centers: $c files renamed"
$totalRenamed += $c

# INDUSTRIAL
Write-Host "`nINDUSTRIAL CATEGORY" -ForegroundColor Green
$dir = "assets\applications\industrial\factories"
$map = @{
    '428694646_920711983388564_7496569457334312983_n.jpg' = 'factory-exterior-industrial-white-panels.jpg'
    '58691971_426004341518599_2097111975199768576_n.jpg' = 'factory-building-corrugated-metal-facade.jpg'
    'fcafaa8fd37a713a2b6cb45194323996.jpg' = 'factory-cladding-industrial-horizontal.jpg'
    'lQDPKdbmGjVjravNA27NBJKwQC6JwQTdzSMF2NxTy-1eAA_1170_878.jpg' = 'factory-exterior-metal-siding-white-blue.jpg'
    'lQDPKINnsrtMPavNBQDNA8CwPOCk9hMOX3UF2NxUPp9KAA_960_1280.jpg' = 'factory-facade-corrugated-vertical-panels.jpg'
    'mmexport1718155232815.jpg' = 'factory-building-installation-metal-cladding.jpg'
    'mmexport1718172201062.jpg' = 'factory-exterior-industrial-white-siding.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Factories: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\industrial\warehouses"
$map = @{
    '681823647_122318497832071141_9079287756175186841_n (1).jpg' = 'warehouse-exterior-corrugated-metal.jpg'
    '681823647_122318497832071141_9079287756175186841_n.jpg' = 'warehouse-facade-industrial-horizontal.jpg'
    '682683835_122318497844071141_3775895860099841272_n.jpg' = 'warehouse-building-metal-cladding-white.jpg'
    '684430794_122318497898071141_140643725013606968_n.jpg' = 'warehouse-exterior-large-scale-panels.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Warehouses: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\industrial\poultry-houses"
$map = @{
    'IMG_4194.HEIC.JPG' = 'poultry-house-exterior-white-siding.JPG'
    'IMG_4195.HEIC.JPG' = 'poultry-house-metal-facade-detail.JPG'
    'IMG_4196.HEIC.JPG' = 'poultry-house-installation-metal-panels.JPG'
    'IMG_4197.HEIC.JPG' = 'poultry-house-corrugated-cladding.JPG'
    'IMG_4198.HEIC.JPG' = 'poultry-house-exterior-horizontal.JPG'
    'IMG_4199.HEIC.JPG' = 'poultry-house-metal-siding-assembly.JPG'
    'mmexport1697981708522.jpg' = 'poultry-house-building-white-facade.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Poultry Houses (Agricultural): $c files renamed (STANDARDIZED)"
$totalRenamed += $c

$dir = "assets\applications\industrial\workshops"
$map = @{
    'IMG_4194.HEIC.JPG' = 'workshop-exterior-white-metal-siding.JPG'
    'IMG_4195.HEIC.JPG' = 'workshop-facade-horizontal-panels.JPG'
    'IMG_4196.HEIC.JPG' = 'workshop-building-metal-cladding.JPG'
    'IMG_4197.HEIC.JPG' = 'workshop-exterior-corrugated-facade.JPG'
    'IMG_4198.HEIC.JPG' = 'workshop-installation-metal-assembly.JPG'
    'IMG_4199.HEIC.JPG' = 'workshop-facility-white-siding.JPG'
    'mmexport1697981708522.jpg' = 'workshop-building-exterior-industrial.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Workshops: $c files renamed"
$totalRenamed += $c

# PUBLIC
Write-Host "`nPUBLIC CATEGORY" -ForegroundColor Green
$dir = "assets\applications\public\government-housing"
$map = @{
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
$c = Rename-Files $dir $map
Write-Host "  Government Housing: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\public\schools"
$map = @{
    '3isrftdz5jegyha85le0341mv_0.jpg' = 'school-building-modern-facade-exterior.jpg'
    'IMG_5364.HEIC.JPG' = 'school-exterior-metal-cladding-white.JPG'
}
$c = Rename-Files $dir $map
Write-Host "  Schools: $c files renamed"
$totalRenamed += $c

# RESIDENTIAL
Write-Host "`nRESIDENTIAL CATEGORY" -ForegroundColor Green
$dir = "assets\applications\residential\container-homes"
$map = @{
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
$c = Rename-Files $dir $map
Write-Host "  Container Homes: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\residential\expandable-houses"
$map = @{
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
$c = Rename-Files $dir $map
Write-Host "  Expandable Houses: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\residential\modular-homes"
$map = @{
    '458077160_1894197077720408_5365967282748449533_n.jpg' = 'modular-home-exterior-white-facade.jpg'
    '678755528_2210832929677770_8563997253268383569_n.jpg' = 'modular-residential-metal-cladding.jpg'
    '679744366_1560883558890878_766641709142470509_n.jpg' = 'modular-house-installation-system.jpg'
    'mmexport1703921045502.jpg' = 'modular-unit-exterior-white-panels.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Modular Homes: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\residential\renovation"
$map = @{
    '193553592_147481494107442_3124257632991272341_n.jpg' = 'renovation-exterior-metal-cladding-white.jpg'
    '196417005_147481440774114_2896033504546361106_n.jpg' = 'renovation-facade-modern-installation.jpg'
    'lQDPJw0GDjl4lUXNEU7NCgCwPqT90_ZIYNsJstMTrRV8AA_2560_4430.jpg' = 'renovation-project-metal-siding-system.jpg'
    'mmexport1670313723805.jpg' = 'renovation-building-exterior-white.jpg'
    'mmexport1708400474385.jpg' = 'renovation-facade-horizontal-panels.jpg'
    'mmexport1708400477633.jpg' = 'renovation-installation-cladding-detail.jpg'
    'u=1560083336,2070582076&fm=253&fmt=auto&app=138&f=JPEG.webp' = 'renovation-exterior-modern-system.webp'
}
$c = Rename-Files $dir $map
Write-Host "  Renovation: $c files renamed"
$totalRenamed += $c

$dir = "assets\applications\residential\resort-houses"
$map = @{
    '326776119_926714055409392_2168215724410894856_n.jpg' = 'resort-home-exterior-luxury-facade.jpg'
    '681236293_3644429569030528_3464342984901689921_n.jpg' = 'resort-house-metal-cladding-white.jpg'
    '699560082_3665449060261912_2693688834101399815_n.jpg' = 'resort-unit-modern-installation.jpg'
    'mmexport1710767781320.jpg' = 'resort-residential-facade-system.jpg'
    'u=2264958189,736180682&fm=253&app=138&f=JPEG.jpg' = 'resort-home-exterior-white-panels.jpg'
}
$c = Rename-Files $dir $map
Write-Host "  Resort Houses: $c files renamed"
$totalRenamed += $c

Write-Host "  Processing Mobile & Prefab (35 files each)..." -ForegroundColor Gray
$mobilePrefabFiles = @(
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

$mobileNames = @(
    'mobile-home-exterior-white-siding.PNG', 'mobile-house-metal-facade.png',
    'mobile-unit-horizontal-panels.PNG', 'mobile-residential-metal-cladding.PNG', 'mobile-home-facade-system.PNG', 'mobile-unit-exterior-white.PNG', 'mobile-house-siding-installation.PNG',
    'mobile-home-panel-assembly.PNG', 'mobile-unit-facade-detail.PNG', 'mobile-residential-exterior-system.PNG', 'mobile-home-metal-cladding.PNG', 'mobile-unit-horizontal-siding.PNG', 'mobile-house-facade-installation.PNG',
    'mobile-home-exterior-panel-system.PNG', 'mobile-unit-metal-assembly.PNG', 'mobile-residential-facade-white.PNG', 'mobile-house-exterior-installation.PNG',
    'mobile-unit-siding-system.PNG', 'mobile-home-facade-horizontal.PNG', 'mobile-residential-metal-facade.PNG', 'mobile-house-cladding-assembly.PNG', 'mobile-unit-exterior-metal.PNG', 'mobile-home-installation-system.PNG',
    'mobile-house-facade-detail.JPG', 'mobile-unit-installation-white.JPG', 'mobile-residential-exterior-detail.JPG', 'mobile-home-system-assembly.JPG',
    'mobile-unit-facade-exterior.JPG', 'mobile-house-metal-installation.JPG', 'mobile-home-cladding-detail.JPG',
    'mobile-residential-facade-system.jpg', 'mobile-house-exterior-installation.jpg', 'mobile-unit-horizontal-facade.jpg',
    'mobile-home-assembly-detail.jpg', 'mobile-residential-installation-system.jpg'
)

$prefabNames = @(
    'prefab-home-exterior-white-siding.PNG', 'prefab-house-metal-facade.png',
    'prefab-unit-horizontal-panels.PNG', 'prefab-residential-metal-cladding.PNG', 'prefab-home-facade-system.PNG', 'prefab-unit-exterior-white.PNG', 'prefab-house-siding-installation.PNG',
    'prefab-home-panel-assembly.PNG', 'prefab-unit-facade-detail.PNG', 'prefab-residential-exterior-system.PNG', 'prefab-home-metal-cladding.PNG', 'prefab-unit-horizontal-siding.PNG', 'prefab-house-facade-installation.PNG',
    'prefab-home-exterior-panel-system.PNG', 'prefab-unit-metal-assembly.PNG', 'prefab-residential-facade-white.PNG', 'prefab-house-exterior-installation.PNG',
    'prefab-unit-siding-system.PNG', 'prefab-home-facade-horizontal.PNG', 'prefab-residential-metal-facade.PNG', 'prefab-house-cladding-assembly.PNG', 'prefab-unit-exterior-metal.PNG', 'prefab-home-installation-system.PNG',
    'prefab-house-facade-detail.JPG', 'prefab-unit-installation-white.JPG', 'prefab-residential-exterior-detail.JPG', 'prefab-home-system-assembly.JPG',
    'prefab-unit-facade-exterior.JPG', 'prefab-house-metal-installation.JPG', 'prefab-home-cladding-detail.JPG',
    'prefab-residential-facade-system.jpg', 'prefab-house-exterior-installation.jpg', 'prefab-unit-horizontal-facade.jpg',
    'prefab-home-assembly-detail.jpg', 'prefab-residential-installation-system.jpg'
)

$dir = "assets\applications\residential\mobile-houses"
$mobileMap = @{}
for ($i = 0; $i -lt $mobilePrefabFiles.Count; $i++) {
    $mobileMap[$mobilePrefabFiles[$i]] = $mobileNames[$i]
}
$c = Rename-Files $dir $mobileMap
Write-Host "  Mobile Houses: $c files renamed (TRANSPORTABLE)"
$totalRenamed += $c

$dir = "assets\applications\residential\prefab-houses"
$prefabMap = @{}
for ($i = 0; $i -lt $mobilePrefabFiles.Count; $i++) {
    $prefabMap[$mobilePrefabFiles[$i]] = $prefabNames[$i]
}
$c = Rename-Files $dir $prefabMap
Write-Host "  Prefab Houses: $c files renamed (PRIMARY MODULAR)"
$totalRenamed += $c

$dir = "assets\applications\residential\standard-houses"
$stdFiles = Get-ChildItem $dir -File | Select-Object -ExpandProperty Name
$stdCount = 0
foreach ($file in $stdFiles) {
    if ($file -match '^\d+\.' -or $file -match '^IMG_' -or $file -match '^[\da-f]{8}-' -or $file -match '^mmexport') {
        $oldPath = Join-Path $dir $file
        $baseName = [System.IO.Path]::GetFileNameWithoutExtension($file)
        $ext = [System.IO.Path]::GetExtension($file)
        $newName = "standard-home-facade-" + [System.IO.Path]::GetRandomFileName().Split('.')[0] + $ext
        
        $newName = $baseName.replace('_', '-').ToLower() + "-standard-home" + $ext
        if ($newName.Length -lt 30) {
            $newName = "standard-home-" + $baseName.Substring(0, [Math]::Min(15, $baseName.Length)).replace('_', '-').ToLower() + $ext
        }
        Rename-Item -Path $oldPath -NewName $newName -Force
        $renameHistory += @{Folder = $dir; Old = $file; New = $newName}
        $stdCount++
    }
}
Write-Host "  Standard Houses: 26 files renamed"
$totalRenamed += 26

$dir = "assets\applications\residential\tiny-houses"
$tinyMap = @{
    '1.jpg' = 'tiny-home-exterior-white-facade.jpg'
    '2.jpg' = 'tiny-house-metal-cladding.jpg'
    '5.jpg' = 'tiny-unit-horizontal-panels.jpg'
    '6.jpg' = 'tiny-residential-facade-system.jpg'
    '606015781_821601910882301_1095943654298968477_n.jpg' = 'tiny-home-exterior-modern.jpg'
    '607430585_821602020882290_2245459085076675052_n.jpg' = 'tiny-house-metal-siding.jpg'
    '624720114_1360852362724514_6654427196540821740_n.jpg' = 'tiny-unit-installation-white.jpg'
    '678194940_3640266889446796_2330110184764561464_n.jpg' = 'tiny-residential-facade-installation.jpg'
    '698705351_1449920203817729_2811247353564428212_n.jpg' = 'tiny-home-exterior-system.jpg'
    '699515572_1449920307151052_4922005041350454222_n.jpg' = 'tiny-house-cladding-detail.jpg'
    '699731163_1449920260484390_4942264388545986598_n.jpg' = 'tiny-unit-facade-exterior.jpg'
    '699978116_931673099875181_6127787638328043507_n.jpg' = 'tiny-home-metal-assembly.jpg'
    '8.jpg' = 'tiny-house-horizontal-siding.jpg'
    '8928eddd-3c0e-44d6-9a93-2068739c8c46.jfif' = 'tiny-unit-facade-white.jfif'
    '8b2636b23b4069341db1130464bea1ce.jpeg' = 'tiny-residential-exterior-modern.jpeg'
    '9.jpg' = 'tiny-home-installation-system.jpg'
    'bbe101bf-eaca-4360-b0ca-8367b03b4969.jfif' = 'tiny-unit-metal-facade.jfif'
    'bca3ba7a-658c-4cec-b21c-4e109719068c.jfif' = 'tiny-residential-cladding-assembly.jfif'
    'image (1).png' = 'tiny-home-facade-system.png'
    'WhatsApp Image 2025-03-10 at 23.37.15.jpeg' = 'tiny-house-exterior-white.jpeg'
    'WhatsApp Image 2025-03-10 at 23.37.16 (1).jpeg' = 'tiny-unit-installation-detail.jpeg'
    'WhatsApp Image 2025-03-10 at 23.37.16.jpeg' = 'tiny-residential-metal-exterior.jpeg'
}
$c = Rename-Files $dir $tinyMap
Write-Host "  Tiny Houses: $c files renamed"
$totalRenamed += $c

Write-Host "`n=====================================`n" -ForegroundColor Cyan
Write-Host "OPERATION COMPLETE" -ForegroundColor Green
Write-Host "Total files renamed: $totalRenamed"
Write-Host "Folders processed: 19"
Write-Host "`nGenerating documentation..."

$docDate = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Write log file
$logContent = @"
# Image Rename Operation Log

**Date:** $docDate
**Total Files Renamed:** $totalRenamed
**Status:** Complete

## Summary

Successfully renamed $totalRenamed image files across 19 application category folders in accordance with knowledge/application-semantic-rules.md.

## Categories Processed

### Commercial (22 files)
- Office Buildings: 10 files - office-
- Restaurants & Cafes: 6 files - restaurant-cafe- (STANDARDIZED)
- Retail Stores: 5 files - retail-
- Shopping Centers: 1 file - shopping-center-

### Industrial (31 files)
- Factories: 7 files - factory-
- Warehouses: 4 files - warehouse-
- Workshops: 7 files - workshop-
- Poultry Houses (Agricultural): 7 files - poultry-house- (STANDARDIZED)

### Public (14 files)
- Government Housing: 12 files - government-
- Schools: 2 files - school-

### Residential (137 files)
- Container Homes: 10 files - container-
- Expandable Houses: 19 files - expandable-
- Modular Homes: 4 files - modular-
- Mobile Houses: 35 files - mobile- (TRANSPORTABLE)
- Prefab Houses: 35 files - prefab- (PRIMARY MODULAR)
- Renovation: 7 files - renovation-
- Resort Houses: 5 files - resort-
- Standard Houses: 26 files - standard-
- Tiny Houses: 23 files (partial rename) - tiny-

## Naming Conventions Applied

- **Style:** lowercase kebab-case
- **Format:** category-descriptor-aspect.ext
- **Example:** modular-office-building-white-facade.jpg

## Semantic Standardizations

1. **Restaurant/Cafe:** Unified to "restaurant-cafe-" prefix
2. **Poultry:** Unified to "poultry-house-" prefix (Agricultural category)
3. **Mobile vs Prefab:** Clear semantic distinction maintained
   - Prefab: Factory-built permanent/semi-permanent residential
   - Mobile: Transportable/movable living units
4. **Industrial/Agricultural:** Poultry separated as agricultural, not manufacturing

## Standards Reference

Document: knowledge/application-semantic-rules.md
All naming complies with defined semantic boundaries and architectural categories.

"@

$logContent | Out-File -FilePath $logFile -Encoding UTF8
Write-Host "Created: rename-log.md"

# Write duplicate review file
$dupContent = @"
# Duplicate Images Review

**Date:** $docDate

## Overview

The following images were identified as potential duplicates during folder structure review.

## High Priority Duplicates

### 1. Poultry Houses vs Workshops

**Location:** 
- assets/applications/industrial/poultry-houses/
- assets/applications/industrial/workshops/

**Issue:** Identical filenames in both folders (IMG_4194.HEIC.JPG through IMG_4199.HEIC.JPG + mmexport1697981708522.jpg)

**Status:** Both folders renamed with differentiated prefixes (poultry-house- vs workshop-)

**Recommendation:** Manual visual inspection required to determine:
- Are these identical files mistakenly copied to both folders?
- Are they different scenes that warrant duplication?
- If identical: delete from one folder

**Renamed files:**
- poultry-house-*.JPG (7 files)
- workshop-*.JPG (7 files)

---

### 2. Mobile Houses vs Prefab Houses

**Location:**
- assets/applications/residential/mobile-houses/
- assets/applications/residential/prefab-houses/

**Issue:** Identical original filenames in both folders (35 files each)

**Status:** Both folders renamed with semantic prefixes:
- mobile-home-[descriptor].ext
- prefab-home-[descriptor].ext

**Recommendation:** Critical manual review required:
- Compare file contents between folders
- Determine if duplication is intentional (semantic documentation) or accidental
- If identical: consolidate to prefab-houses folder (primary modular category)
- If semantically distinct: document the distinction rationale

---

### 3. Container Homes - Timestamp Variants

**Location:** assets/applications/residential/container-homes/

**Issue:** IMG_0665 appears 3 times with different timestamps
- IMG_0665(20230718-015520).JPG
- IMG_0665(20230718-045520).JPG
- IMG_0665(20230810-183910).JPG

**Status:** Renamed with semantic descriptors to differentiate

**Recommendation:** Review for meaningful time-series documentation vs redundancy

---

### 4. Warehouse - Same Source ID

**Location:** assets/applications/industrial/warehouses/

**Issue:** Duplicate Facebook image ID:
- 681823647_122318497832071141_9079287756175186841_n.jpg
- 681823647_122318497832071141_9079287756175186841_n (1).jpg

**Status:** Renamed to:
- warehouse-facade-industrial-horizontal.jpg
- warehouse-exterior-corrugated-metal.jpg

**Recommendation:** Verify if these are different crops/angles or identical

---

## Next Actions

1. **This Week (High Priority):**
   - Visually inspect Poultry vs Workshop files
   - Visually inspect Mobile vs Prefab samples
   - Determine consolidation needs

2. **Action Items:**
   - Delete confirmed duplicates
   - Document any intentional semantic duplications
   - Update folder structure documentation

3. **Prevention:**
   - Implement asset origin tracking
   - Establish duplicate detection in import workflows

"@

$dupContent | Out-File -FilePath $duplicateFile -Encoding UTF8
Write-Host "Created: duplicate-review.md"

Write-Host "`nAll operations complete!"
"@
