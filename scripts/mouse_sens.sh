 #!/bin/sh

SEARCH="Logitech Gaming Mouse G900"

if [ "$SEARCH" = "" ]; then 
    exit 1
fi

ids=$(xinput --list | awk -v search="$SEARCH" \
    '$0 ~ search {match($0, /id=[0-9]+/);\
                  if (RSTART) \
                    print substr($0, RSTART+3, RLENGTH-3)\
                 }'\
     )

#wireids=($ids)
for i in $ids
do
	xinput --set-prop $i 'libinput Accel Speed' -0.6
done
#x=$(xinput --set-prop ${wireids[0]} 'libinput Accel Speed' -0.65)
#echo $x
#y=$(xinput --set-prop ${wireids[1]} 'libinput Accel Speed' -0.6)
#echo $y
#z=$(xinput --set-prop ${wireids[2]} 'libinput Accel Speed' -0.65)
#echo $z
#echo ${wireids[@]}


# FOR THE WIRELESS MOUSE
SEARCH="Logitech G900"

if [ "$SEARCH" = "" ]; then 
    exit 1
fi

nid=$(xinput --list | awk -v search="$SEARCH" \
    '$0 ~ search {match($0, /id=[0-9]+/);\
                  if (RSTART) \
                    print substr($0, RSTART+3, RLENGTH-3)\
                 }'\
     )

for i in $nid
do
	xinput --set-prop $i 'libinput Accel Speed' -0.73
done
#arr=($nid)
#xinput --set-prop ${arr[0]} 'libinput Accel Speed' -0.65
