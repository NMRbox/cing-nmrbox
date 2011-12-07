#!/bin/tcsh
# Author: Jurgen F. Doreleijers
# $CINGROOT/scripts/cing/rsyncCVCdata.csh
# Can be run from cron as root.
# Once do by hand: 
#	   mkdir -p $target_dir $target2_dir
#
# NB final slash is important.
set base_url         = i@nmr.cmbi.ru.nl\:/mnt/data/ 
set target_dir       = /Volumes/tria3/backup/CVCdata
# Use separate directory for exceptions so that the --delete switch works.
set target2_dir      = /Volumes/tria3/backup/CVCdata2
# Use triple -vvv for much higher verbosity when debugging.
set rsyncOpt = "-avz --stats --delete --max-delete=100"
setenv cingScriptDir $0:h
set localC = $cingScriptDir/localConstants.csh
if ( -e $localC ) then
    echo "Sourcing: $localC"
    source $localC
endif
if ( -e $UJ/cingStableSettings.csh ) then
    source $UJ/cingStableSettings.csh
endif

set C = $CINGROOT
set targetList = ( CASD-NMR-CING )

echo "Starting rsyncCVCdata.csh with [$$] and [$0]"
echo "DEBUG: base_url           $base_url"
echo "DEBUG: target_dir         $target_dir"
echo "Syncing"

set x = testDir
echo "-0- Syncing $x"
cd $target2_dir
rsync         $rsyncOpt --include-from=$C/scripts/cing/rsyncTestDir.txt -e ssh $base_url/D/$x/ $x
if ( $status ) then
    echo "ERROR: Failed the -0- Test rsync"
    exit 1
endif

cd $target2_dir
foreach x ( $targetList ) 
    echo "-1- Syncing archive $x"
    rsync $rsyncOpt --include-from=$C/scripts/cing/rsyncCingArchive.txt -e ssh $base_url/D/$x/ $x
    if ( $status ) then
        echo "ERROR: Failed syncing the archive $x"
        exit 2
    endif    
end    

echo "-2- Syncing main archive"
cd $target_dir
rsync    $rsyncOpt --include-from=$C/scripts/cing/rsyncCVCdataRules.txt -e ssh $base_url .
if ( $status ) then
    echo "ERROR: Failed syncing the main archive"
    exit 3
endif

echo "Done syncing."