:: http://honglus.blogspot.com.eg/2010/06/use-script-to-fetch-url-protected-by.html

:: Test 1
:: --no-host-directories 	skip root folder
:: --cut-dirs=4 			skip folder structure
:: --no-parent 				skip parent links
:: --no-clobber				skip available files
::wget.exe --no-host-directories --cut-dirs=4 --no-parent --no-clobber --recursive --http-user=mohab.ayman --http-password=PASSWORD_HERE "http://student.guc.edu.eg/intranet/Faculties/MBA/MBA/MBA Standard Courses Outlines & Materials/Basic Courses/Corporate Finance/Course outline/"

:: Test 2 - flat structure
:: --no-directories			get flat files
:: --directory-prefix		place in folder
::wget.exe --no-directories --directory-prefix=FinanceFlatDir --no-parent --no-clobber --recursive --http-user=mohab.ayman --http-password=PASSWORD_HERE "http://student.guc.edu.eg/intranet/Faculties/MBA/MBA/MBA Standard Courses Outlines & Materials/Basic Courses/Corporate Finance/Course outline/"

:: Test 3 - get urls from file
:: --input-file=urls.txt	using an external file
::wget.exe --no-host-directories --cut-dirs=4 --no-clobber --no-parent --recursive --http-user=mohab.ayman --http-password=PASSWORD_HERE --input-file=urls.txt

:: Test 4 - get images
::wget --no-directories --directory-prefix=images --recursive -e robots=off --accept jpeg,jpg,bmp,gif,png http://weknowyourdreams.com/boy.html

:: Test 5 - exclude index.html
wget.exe --reject="index.html" --no-directories --directory-prefix=FinanceFlatDir --no-parent --no-clobber --recursive --http-user=mohab.ayman --http-password=PASSWORD_HERE "http://student.guc.edu.eg/intranet/Faculties/MBA/MBA/MBA Standard Courses Outlines & Materials/Basic Courses/Corporate Finance/Course outline/"

pause