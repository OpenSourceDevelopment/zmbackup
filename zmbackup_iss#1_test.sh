# given
./zmbackup admin@zimbra.local

# when 
listfile=`ls ../backup/ | grep admin@zimbra.local.tar.gz`

# then
if [ -z $listfile ]; then 
	echo "admin@zimbra.local.tar.gz doesn't exist"
	echo "TEST FAILURE"
else
	echo "TEST PASS"
	rm ../backup/admin@zimbra.local.tar.gz
fi
