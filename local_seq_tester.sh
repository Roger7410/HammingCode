echo "start assign word_count job"
python2.7 mr_seq.py word_count.py 10000 3 file_sim.txt count_all
echo "Test result: word_count"
python2.7 wc_test.py file_sim.txt count_all
      