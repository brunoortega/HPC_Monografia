## teste 1: ISO 2x mgpu

echo "teste 1: ISO 2x mgpu"

echo "1 gpu:\n"
echo "1 gpu:\n" >> output_iso_r4_2x_mgpu.txt

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 400 400 400 1515 1 0 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 500 500 500 1515 1 0 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 580 580 580 1515 1 0 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 690 690 690 1515 1 0 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 1000 1000 1000 1515 1 0 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt


echo "2 gpu:\n"
echo "2 gpu:\n" >> output_iso_r4_2x_mgpu.txt

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 400 400 400 1515 2 0 1 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 500 500 500 1515 2 0 1 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 580 580 580 1515 2 0 1 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 690 690 690 1515 2 0 1 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 1000 1000 1000 1515 2 0 1 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt


echo "3 gpu:\n"
echo "3 gpu:\n" >> output_iso_r4_2x_mgpu.txt

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 400 400 400 1515 3 0 1 2 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 500 500 500 1515 3 0 1 2 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 580 580 580 1515 3 0 1 2 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 690 690 690 1515 3 0 1 2 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 1000 1000 1000 1515 3 0 1 2 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt


echo "4 gpu:\n"
echo "4 gpu:\n" >> output_iso_r4_2x_mgpu.txt

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 400 400 400 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 500 500 500 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 580 580 580 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 690 690 690 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu.txt
time ./x_iso_r4_2x_mgpu 1000 1000 1000 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu.txt 
echo "*************************" >> output_iso_r4_2x_mgpu.txt

## teste 2: ISO 2x mgpu async
echo "teste 2: ISO 2x mgpu async"

echo "1 gpu:\n" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 400 400 400 1515 1 0 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 500 500 500 1515 1 0 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 580 580 580 1515 1 0 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 690 690 690 1515 1 0 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 1000 1000 1000 1515 1 0 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 


echo "2 gpu:\n"
echo "2 gpu:\n" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 400 400 400 1515 2 0 1 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 500 500 500 1515 2 0 1 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 580 580 580 1515 2 0 1 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 690 690 690 1515 2 0 1 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 1000 1000 1000 1515 2 0 1 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 


echo "3 gpu:\n"
echo "3 gpu:\n" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 400 400 400 1515 3 0 1 2 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 500 500 500 1515 3 0 1 2 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 580 580 580 1515 3 0 1 2 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 690 690 690 1515 3 0 1 2 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 1000 1000 1000 1515 3 0 1 2 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 


echo "4 gpu:\n"
echo "4 gpu:\n" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 400 400 400 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 500 500 500 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 580 580 580 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 690 690 690 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_iso_r4_2x_mgpu_async.txt 
time ./x_iso_r4_2x_mgpu_async 1000 1000 1000 1515 4 0 1 2 3 >> output_iso_r4_2x_mgpu_async.txt 
echo "*************************" >> output_iso_r4_2x_mgpu_async.txt 

## teste 3: TTI 2x mgpu
echo "teste 3: TTI 2x mgpu"

echo "1 gpu:\n" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 400 400 400 1515 1 0 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 500 500 500 1515 1 0 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 580 580 580 1515 1 0 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 690 690 690 1515 1 0 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 1000 1000 1000 1515 1 0 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 


echo "2 gpu:\n"
echo "2 gpu:\n" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 400 400 400 1515 2 0 1 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 500 500 500 1515 2 0 1 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 580 580 580 1515 2 0 1 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 690 690 690 1515 2 0 1 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 1000 1000 1000 1515 2 0 1 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 


echo "3 gpu:\n"
echo "3 gpu:\n" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 400 400 400 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 500 500 500 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 580 580 580 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 690 690 690 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 1000 1000 1000 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 


echo "4 gpu:\n"
echo "4 gpu:\n" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 400 400 400 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 500 500 500 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 580 580 580 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 690 690 690 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu.txt 
time ./x_tti_r4_1pass_mgpu 1000 1000 1000 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu.txt 

## teste 4: TTI 2x mgpu async

echo "teste 4: TTI 2x mgpu async"

echo "1 gpu:\n" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 400 400 400 1515 1 0 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 500 500 500 1515 1 0 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 580 580 580 1515 1 0 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 690 690 690 1515 1 0 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 1000 1000 1000 1515 1 0 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 


echo "2 gpu:\n"
echo "2 gpu:\n" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 400 400 400 1515 2 0 1 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 500 500 500 1515 2 0 1 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 580 580 580 1515 2 0 1 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 690 690 690 1515 2 0 1 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 1000 1000 1000 1515 2 0 1 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 


echo "3 gpu:\n"
echo "3 gpu:\n" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 400 400 400 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 500 500 500 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 580 580 580 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 690 690 690 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 1000 1000 1000 1515 3 0 1 2 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 


echo "4 gpu:\n"
echo "4 gpu:\n" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 400 400 400 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 500 500 500 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 580 580 580 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 690 690 690 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_tti_r4_1pass_mgpu_async.txt 
time ./x_tti_r4_1pass_mgpu_async 1000 1000 1000 1515 4 0 1 2 3 >> output_tti_r4_1pass_mgpu_async.txt 
echo "*************************" >> output_tti_r4_1pass_mgpu_async.txt 

## teste 5: VTI 2x mgpu

echo "teste 5: VTI 2x mgpu"

echo "1 gpu:\n" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 400 400 400 1515 1 0 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 500 500 500 1515 1 0 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 580 580 580 1515 1 0 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 690 690 690 1515 1 0 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 1000 1000 1000 1515 1 0 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 


echo "2 gpu:\n"
echo "2 gpu:\n" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 400 400 400 1515 2 0 1 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 500 500 500 1515 2 0 1 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 580 580 580 1515 2 0 1 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 690 690 690 1515 2 0 1 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 1000 1000 1000 1515 2 0 1 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 


echo "3 gpu:\n"
echo "3 gpu:\n" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 400 400 400 1515 3 0 1 2 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 500 500 500 1515 3 0 1 2 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 580 580 580 1515 3 0 1 2 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 690 690 690 1515 3 0 1 2 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 1000 1000 1000 1515 3 0 1 2 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 


echo "4 gpu:\n"
echo "4 gpu:\n" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 400 400 400 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 500 500 500 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 580 580 580 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 690 690 690 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu.txt 
time ./x_vti_r4_2x_mgpu 1000 1000 1000 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu.txt 
echo "*************************" >> output_vti_r4_2x_mgpu.txt 

## teste 6: VTI 2x mgpu async

echo "teste 6: VTI 2x mgpu async"

echo "1 gpu:\n" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 400 400 400 1515 1 0 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 500 500 500 1515 1 0 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 580 580 580 1515 1 0 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 690 690 690 1515 1 0 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 1000 1000 1000 1515 1 0 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 


echo "2 gpu:\n"
echo "2 gpu:\n" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 400 400 400 1515 2 0 1 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 500 500 500 1515 2 0 1 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 580 580 580 1515 2 0 1 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 690 690 690 1515 2 0 1 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 1000 1000 1000 1515 2 0 1 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 


echo "3 gpu:\n"
echo "3 gpu:\n" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 400 400 400 1515 3 0 1 2 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 500 500 500 1515 3 0 1 2 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 580 580 580 1515 3 0 1 2 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 690 690 690 1515 3 0 1 2 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 1000 1000 1000 1515 3 0 1 2 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 


echo "4 gpu:\n"
echo "4 gpu:\n" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 400\n"
echo "grid = 400\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 400 400 400 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 500\n"
echo "grid = 500\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 500 500 500 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 580\n"
echo "grid = 580\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 580 580 580 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 690\n"
echo "grid = 690\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 690 690 690 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 

echo "grid = 1000\n"
echo "grid = 1000\n" >> output_vti_r4_2x_mgpu_async.txt 
time ./x_vti_r4_2x_mgpu_async 1000 1000 1000 1515 4 0 1 2 3 >> output_vti_r4_2x_mgpu_async.txt 
echo "*************************" >> output_vti_r4_2x_mgpu_async.txt 
