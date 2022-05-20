from subprocess import Popen, PIPE

def met():
    p = Popen(['pamixer', '--get-volume'], stdin=PIPE, stdout=PIPE, stderr=PIPE)
    output, err = p.communicate()

    #print(p.returncode)
    #print(output, err)


    return p.returncode

if met()>1:
    print("true") # true if error
else:
    print("false")
