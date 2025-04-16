
function shaba($inp) {
    # a convenient function for getting back to your work later

   $b = (get-filehash $inp )

   $a = date ;
   $day = "{0:00}" -f $a.day  ;
   $year  = "{0:0000}" -f $a.year  ;
   $mon = "{0:00}" -f $a.month ;   
   $simpledate = "$mon"+"_$day"+"_$year"+"__" + $a.hour + "_" + $a.minute ;

    $ts = $b.hash #h (sha $inp)[-1]
    $nn = (ls $inp)
    $sdps = $simpledate

    echo "inp: $nn"
    $di = $nn.name.tostring().lastindexof(".")

    $pref = $nn.name.tostring().substring($di)

    $fp = $nn.name.tostring().substring(0,$di)

    $newname = ($fp, $sdps, $ts , $pref) -join "_"
    echo $newname 
    $b = 1
    if ($b) {
        cp $inp $newname
        $lso =  (ls $newname  |where name -like $ts)
        echo "$lso"
       
    }
}
