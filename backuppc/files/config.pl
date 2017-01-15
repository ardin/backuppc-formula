# salted configuration

$Conf{ServerHost} = 'localhost';

$Conf{ServerPort} = '-1';

$Conf{ServerMesgSecret} = '';

$Conf{MyPath} = '/bin';

$Conf{UmaskMode} = '23';

$Conf{WakeupSchedule} = [
  '1',
  '2',
  '3',
  '4',
  '5',
  '6',
  '7',
  '8',
  '9',
  '10',
  '11',
  '12',
  '13',
  '14',
  '15',
  '16',
  '17',
  '18',
  '19',
  '20',
  '21',
  '22',
  '23'
];

$Conf{MaxBackups} = '4';

$Conf{MaxUserBackups} = '4';

$Conf{MaxPendingCmds} = '15';

$Conf{CmdQueueNice} = '10';

$Conf{MaxBackupPCNightlyJobs} = '2';

$Conf{BackupPCNightlyPeriod} = '1';

$Conf{MaxOldLogFiles} = '14';

$Conf{DfPath} = '/usr/bin/df';

$Conf{DfCmd} = '$dfPath $topDir';

$Conf{SplitPath} = '/usr/bin/split';
$Conf{ParPath} = undef;
$Conf{CatPath} = '/usr/bin/cat';
$Conf{GzipPath} = '/usr/bin/gzip';
$Conf{Bzip2Path} = '/usr/bin/bzip2';

$Conf{DfMaxUsagePct} = '95';

$Conf{TrashCleanSleepSec} = '300';

$Conf{DHCPAddressRanges} = [];

$Conf{BackupPCUser} = 'backuppc';

$Conf{TopDir} = '/var/lib/BackupPC/';
$Conf{ConfDir} = '/etc/BackupPC/';
$Conf{LogDir} = '/var/log/BackupPC';
$Conf{InstallDir} = '/usr/share/BackupPC';
$Conf{CgiDir} = '/usr/share/BackupPC/sbin/';

$Conf{BackupPCUserVerify} = '1';

$Conf{HardLinkMax} = '31999';

$Conf{PerlModuleLoad} = undef;

$Conf{ServerInitdPath} = undef;
$Conf{ServerInitdStartCmd} = '';


$Conf{FullPeriod} = '6.97';

$Conf{IncrPeriod} = '0.97';

$Conf{FullKeepCnt} = [
  '1'
];

$Conf{FullKeepCntMin} = '1';
$Conf{FullAgeMax} = '90';

$Conf{IncrKeepCnt} = '6';

$Conf{IncrKeepCntMin} = '1';
$Conf{IncrAgeMax} = '30';

$Conf{IncrLevels} = [
  '1'
];

$Conf{BackupsDisable} = '0';

$Conf{PartialAgeMax} = '3';

$Conf{IncrFill} = '0';

$Conf{RestoreInfoKeepCnt} = '10';

$Conf{ArchiveInfoKeepCnt} = '10';

$Conf{BackupFilesOnly} = {};

$Conf{BackupFilesExclude} = {};

$Conf{BlackoutBadPingLimit} = '3';
$Conf{BlackoutGoodCnt} = '7';

$Conf{BlackoutPeriods} = [
  {
    'hourEnd' => '19.5',
    'weekDays' => [
      '1',
      '2',
      '3',
      '4',
      '5'
    ],
    'hourBegin' => '7'
  }
];

$Conf{BackupZeroFilesIsFatal} = '1';

$Conf{XferMethod} = 'rsync';

$Conf{XferLogLevel} = '1';

$Conf{ClientCharset} = '';

$Conf{ClientCharsetLegacy} = 'iso-8859-1';

$Conf{SmbShareName} = [
  'C$'
];

$Conf{SmbShareUserName} = '';

$Conf{SmbSharePasswd} = '';

$Conf{SmbClientPath} = '/usr/bin/smbclient';

$Conf{SmbClientFullCmd} = '$smbClientPath \\\\$host\\$shareName $I_option -U $userName -E -d 1 -c tarmode\\ full -Tc$X_option - $fileList';

$Conf{SmbClientIncrCmd} = '$smbClientPath \\\\$host\\$shareName $I_option -U $userName -E -d 1 -c tarmode\\ full -TcN$X_option $timeStampFile - $fileList';

$Conf{SmbClientRestoreCmd} = '$smbClientPath \\\\$host\\$shareName $I_option -U $userName -E -d 1 -c tarmode\\ full -Tx -';

$Conf{TarShareName} = [
  '/'
];

$Conf{TarClientCmd} = '$sshPath -q -x -n -l root $host env LC_ALL=C $tarPath -c -v -f - -C $shareName+ --totals';

$Conf{TarFullArgs} = '$fileList+';

$Conf{TarIncrArgs} = '--newer=$incrDate+ $fileList+';

$Conf{TarClientRestoreCmd} = '$sshPath -q -x -l root $host env LC_ALL=C $tarPath -x -p --numeric-owner --same-owner -v -f - -C $shareName+';

$Conf{TarClientPath} = '/usr/bin/gtar';

$Conf{RsyncClientPath} = '/usr/bin/rsync';

$Conf{RsyncClientCmd} = '$sshPath -q -x -l root $host $rsyncPath $argList+';

$Conf{RsyncClientRestoreCmd} = '$sshPath -q -x -l root $host $rsyncPath $argList+';

$Conf{RsyncShareName} = [
  '/'
];

$Conf{RsyncdClientPort} = '873';

$Conf{RsyncdUserName} = '';

$Conf{RsyncdPasswd} = '';

$Conf{RsyncdAuthRequired} = '1';

$Conf{RsyncCsumCacheVerifyProb} = '0.01';

$Conf{RsyncArgs} = [
  '--numeric-ids',
  '--perms',
  '--owner',
  '--group',
  '-D',
  '--links',
  '--hard-links',
  '--times',
  '--block-size=2048',
  '--recursive'
];

$Conf{RsyncArgsExtra} = [];

$Conf{RsyncRestoreArgs} = [
  '--numeric-ids',
  '--perms',
  '--owner',
  '--group',
  '-D',
  '--links',
  '--hard-links',
  '--times',
  '--block-size=2048',
  '--relative',
  '--ignore-times',
  '--recursive'
];

$Conf{FtpShareName} = [
  ''
];

$Conf{FtpUserName} = '';

$Conf{FtpPasswd} = '';

$Conf{FtpPassive} = '1';

$Conf{FtpBlockSize} = '10240';

$Conf{FtpPort} = '21';

$Conf{FtpTimeout} = '120';

$Conf{FtpFollowSymlinks} = '0';

$Conf{ArchiveDest} = '/tmp';

$Conf{ArchiveComp} = 'gzip';

$Conf{ArchivePar} = '0';

$Conf{ArchiveSplit} = '0';

$Conf{ArchiveClientCmd} = '$Installdir/bin/BackupPC_archiveHost $tarCreatePath $splitpath $parpath $host $backupnumber $compression $compext $splitsize $archiveloc $parfile *';

$Conf{SshPath} = '/usr/bin/ssh';

$Conf{NmbLookupPath} = '/usr/bin/nmblookup';

$Conf{NmbLookupCmd} = '$nmbLookupPath -A $host';

$Conf{NmbLookupFindHostCmd} = '$nmbLookupPath $host';

$Conf{FixedIPNetBiosNameCheck} = '0';

$Conf{PingPath} = '/bin/ping';

$Conf{PingCmd} = '$pingPath -c 1 $host';

$Conf{PingMaxMsec} = '20';

$Conf{CompressLevel} = '3';

$Conf{ClientTimeout} = '72000';

$Conf{MaxOldPerPCLogFiles} = '12';

$Conf{DumpPreUserCmd} = undef;
$Conf{DumpPostUserCmd} = undef;
$Conf{DumpPreShareCmd} = undef;
$Conf{DumpPostShareCmd} = undef;
$Conf{RestorePreUserCmd} = undef;
$Conf{RestorePostUserCmd} = undef;
$Conf{ArchivePreUserCmd} = undef;
$Conf{ArchivePostUserCmd} = undef;

$Conf{UserCmdCheckStatus} = '0';

$Conf{ClientNameAlias} = undef;

$Conf{SendmailPath} = undef;

$Conf{EMailNotifyMinDays} = '2.5';

$Conf{EMailFromUserName} = 'backuppc';

$Conf{EMailAdminUserName} = 'backuppc';

$Conf{EMailUserDestDomain} = '';

$Conf{EMailNoBackupEverSubj} = undef;
$Conf{EMailNoBackupEverMesg} = undef;

$Conf{EMailNotifyOldBackupDays} = '7';

$Conf{EMailNoBackupRecentSubj} = undef;
$Conf{EMailNoBackupRecentMesg} = undef;

$Conf{EMailNotifyOldOutlookDays} = '5';

$Conf{EMailOutlookBackupSubj} = undef;
$Conf{EMailOutlookBackupMesg} = undef;

$Conf{EMailHeaders} = 'MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
';

$Conf{CgiAdminUserGroup} = '';
$Conf{CgiAdminUsers} = 'backuppc';

$Conf{CgiURL} = 'http://localhost/BackupPC';

$Conf{Language} = 'en';

$Conf{CgiUserHomePageCheck} = '';
$Conf{CgiUserUrlCreate} = 'mailto:%s';

$Conf{CgiDateFormatMMDD} = '1';

$Conf{CgiNavBarAdminAllHosts} = '1';

$Conf{CgiSearchBoxEnable} = '1';

$Conf{CgiNavBarLinks} = [
  {
    'link' => '?action=view&type=docs',
    'lname' => 'Documentation',
    'name' => undef
  },
  {
    'link' => 'http://backuppc.wiki.sourceforge.net',
    'lname' => undef,
    'name' => 'Wiki'
  },
  {
    'link' => 'http://backuppc.sourceforge.net',
    'lname' => undef,
    'name' => 'SourceForge'
  }
];

$Conf{CgiStatusHilightColor} = {
};

$Conf{CgiHeaders} = '<meta http-equiv="pragma" content="no-cache">';

$Conf{CgiImageDir} = '/usr/share/BackupPC/html/';

$Conf{CgiExt2ContentType} = {};

$Conf{CgiImageDirURL} = '/BackupPC/images';

$Conf{CgiCSSFile} = 'BackupPC_stnd.css';

$Conf{CgiUserConfigEditEnable} = '1';

$Conf{CgiUserConfigEdit} = {
  'EMailOutlookBackupSubj' => '1',
  'ClientCharset' => '1',
  'TarFullArgs' => '1',
  'RsyncdPasswd' => '1',
  'FtpBlockSize' => '1',
  'IncrKeepCnt' => '1',
  'PartialAgeMax' => '1',
  'FixedIPNetBiosNameCheck' => '1',
  'SmbShareUserName' => '1',
  'EMailFromUserName' => '1',
  'ArchivePreUserCmd' => '0',
  'PingCmd' => '0',
  'FullAgeMax' => '1',
  'FtpUserName' => '1',
  'PingMaxMsec' => '1',
  'CompressLevel' => '1',
  'DumpPreShareCmd' => '0',
  'BackupFilesOnly' => '1',
  'EMailNotifyOldBackupDays' => '1',
  'EMailAdminUserName' => '1',
  'RsyncCsumCacheVerifyProb' => '1',
  'BlackoutPeriods' => '1',
  'NmbLookupFindHostCmd' => '0',
  'MaxOldPerPCLogFiles' => '1',
  'TarClientCmd' => '0',
  'EMailNotifyOldOutlookDays' => '1',
  'SmbSharePasswd' => '1',
  'SmbClientIncrCmd' => '0',
  'FullKeepCntMin' => '1',
  'RsyncArgs' => '1',
  'FtpFollowSymlinks' => '1',
  'ArchiveComp' => '1',
  'TarIncrArgs' => '1',
  'EMailUserDestDomain' => '1',
  'TarClientPath' => '0',
  'RsyncClientCmd' => '0',
  'IncrFill' => '1',
  'RestoreInfoKeepCnt' => '1',
  'UserCmdCheckStatus' => '0',
  'RsyncdClientPort' => '1',
  'IncrAgeMax' => '1',
  'RsyncdUserName' => '1',
  'RsyncRestoreArgs' => '1',
  'ClientCharsetLegacy' => '1',
  'SmbClientFullCmd' => '0',
  'ArchiveInfoKeepCnt' => '1',
  'FtpShareName' => '1',
  'BackupZeroFilesIsFatal' => '1',
  'EMailNoBackupRecentMesg' => '1',
  'FtpPort' => '1',
  'FullKeepCnt' => '1',
  'TarShareName' => '1',
  'EMailNoBackupEverSubj' => '1',
  'TarClientRestoreCmd' => '0',
  'EMailNoBackupRecentSubj' => '1',
  'ArchivePar' => '1',
  'XferLogLevel' => '1',
  'ArchiveDest' => '1',
  'RsyncdAuthRequired' => '1',
  'ClientTimeout' => '1',
  'EMailNotifyMinDays' => '1',
  'SmbClientRestoreCmd' => '0',
  'ClientNameAlias' => '0',
  'DumpPostShareCmd' => '0',
  'IncrLevels' => '1',
  'EMailOutlookBackupMesg' => '1',
  'BlackoutBadPingLimit' => '1',
  'BackupFilesExclude' => '1',
  'FullPeriod' => '1',
  'RsyncClientRestoreCmd' => '0',
  'ArchivePostUserCmd' => '0',
  'IncrPeriod' => '1',
  'RsyncShareName' => '1',
  'FtpTimeout' => '1',
  'RestorePostUserCmd' => '0',
  'BlackoutGoodCnt' => '1',
  'ArchiveClientCmd' => '0',
  'ArchiveSplit' => '1',
  'FtpRestoreEnabled' => '1',
  'XferMethod' => '1',
  'NmbLookupCmd' => '0',
  'BackupsDisable' => '1',
  'SmbShareName' => '1',
  'FtpPasswd' => '1',
  'RestorePreUserCmd' => '0',
  'RsyncArgsExtra' => '1',
  'IncrKeepCntMin' => '1',
  'EMailNoBackupEverMesg' => '1',
  'EMailHeaders' => '1',
  'DumpPreUserCmd' => '0',
  'RsyncClientPath' => '0',
  'DumpPostUserCmd' => '0'
};
