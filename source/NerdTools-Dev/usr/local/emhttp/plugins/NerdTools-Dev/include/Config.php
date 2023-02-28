<?php

$os_version = strtok(parse_ini_file('/etc/unraid-version')['version'], '.') . '.' . strtok('.');

$pkg_desc = 'https://raw.githubusercontent.com/UnRAIDES/NerdTools-Dev/main/packages/packages-desc';
$pkg_repo = "https://api.github.com/repos/UnRAIDES/NerdTools-Dev/contents/packages/6.11";

?>