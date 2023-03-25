grepfile=/Users/oluwafemiajeigbe/Desktop/PA3/EE524_CPTS561/grepfiler1.txt

echo
echo "401"
cd /Users/oluwafemiajeigbe/Desktop/PA3/EE524_CPTS561/401.bzip2
./runGem5.sh
cd m5out
echo "401" > $grepfile
grep "BTB" stats.txt >> $grepfile
grep "Branch" stats.txt >> $grepfile

echo
echo "429"
cd /Users/oluwafemiajeigbe/Desktop/PA3/EE524_CPTS561/429.mcf
./runGem5.sh
cd m5out
echo "429" >> $grepfile
grep "BTB" stats.txt >> $grepfile
grep "Branch" stats.txt >> $grepfile

echo
echo "458"
cd /Users/oluwafemiajeigbe/Desktop/PA3/EE524_CPTS561/456.hmmer
./runGem5.sh
cd m5out
echo "458" >> $grepfile
grep "BTB" stats.txt >> $grepfile
grep "Branch" stats.txt >> $grepfile

echo
echo "456"
cd /Users/oluwafemiajeigbe/Desktop/PA3/EE524_CPTS561/458.sjeng
 ./runGem5.sh
cd m5out
echo "456" >> $grepfile
grep "BTB" stats.txt >> $grepfile
grep "Branch" stats.txt >> $grepfile

echo
echo "470"
cd /Users/oluwafemiajeigbe/Desktop/PA3/EE524_CPTS561/470.lbm
./runGem5.sh
cd m5out
echo "470" >> $grepfile
grep "BTB" stats.txt >> $grepfile
grep "Branch" stats.txt >> $grepfile

