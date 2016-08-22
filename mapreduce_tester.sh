echo "master ip_port.   default: 0.0.0.0:25000"
echo "Master ip_port is ${master_ip_port}"
echo "mapreduce tester"
echo "Select word_count/enc/dec/err/chk/fix/clean/quit"
echo "start assign word_count job"
python2.7 mr_job.py tcp://0.0.0.0:10000 word_count.py 10000 3 file_sim.txt count
echo
echo "Press Enter to continue"
read
echo "start collect"
python2.7 mr_collect.py count count_all tcp://0.0.0.0:10000
echo
echo "Press Enter to continue"
read
echo "Test result"
python2.7 wc_test.py file_sim.txt count_all
            
        