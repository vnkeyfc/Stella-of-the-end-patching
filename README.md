# 0. !!!
Trước khi thực hiện bất cứ thứ gì, hãy tải Folder "0" về, thay thế các file
- "Siglusengine.exe" bằng "SiglusEngineEN.exe"
- "Gameexe.dat" bằng "GameexeEN.dat"
- "Scene.pck" bằng "SceneEN.pck" 
# 1. Làm việc với file scene bằng Python siglus tool
Chạy file SiglusTools.exe

## 1.1 Tìm key 
		
Để tìm được Key của game, mở game lên để đó, sau đó chọn **Find Key** trong Tool

	
## 1.2 Unpack scene
	
Trỏ **Scene file:** đến file "SceneEN.pck". Đợi một lúc bạn sẽ có một thư mục "Scene" chứa các file .ss
		
		
## 1.3 Dump ss
		
Trỏ **Ss folder:** đến thư mục "Scene" vừa tạo.
	
Tích các ô **Copy text**, **Export as xlsx**, **Use single xlsx**, **No filter**. Sau đó bạn sẽ nhận được thư mục Text chưa một file excel duy nhất, đó chính file chứa phần lớn các câu thoại của game.
	
	
## 1.4 Pack ss
		
Dịch xong thì cần đóng gói lại. **Ss folder:** trỏ đến thư mục chứa các file .ss, **Text folder:** trỏ đến thư mục chứa file excel.
	
Tích "Have excel text"
	
	
## 1.5 Pack scene
		
**Scene file:** trỏ đến thư mục chứa các file .ss đã dịch (Thường sẽ chính là folder "Output"). **Scene folder:** trỏ đến thư mục chứa các file .ss cũ.
	
BỎ tích **Double encryption**.
	
File "Scene.pck2" chính là thành phẩm cuối cùng, đưa vào thư mục game và đổi tên file scene thành "SceneEN.pck".



# 2. Làm việc với Gameexe.dat bằng Python siglus tool
	
## 2.1 Sử dụng Decrypt gameexe
	
Trỏ Gameexe: tới chính file "gameexeEN.dat", đầu ra sẽ là file "gameexe.ini".
	
	
## 2.2 Sử dụng Encrypt gameexe
	
BỎ tích **Double encryption**, file "gameexe.dat2" là đầu ra, đưa vào thư mục game và đổi tên thành "gamexeEN.dat".



# 3. Làm việc với các file .g00 bằng vaconv

## 3.1 Sử dụng vaconv-cpp.exe
		
Nên đưa vaconv-cpp.exe vào thẳng thư mục "g00" cho tiện.
		
Mở cmd gõ `vaconv-cpp.exe *.g00` nếu muốn xuất TOÀN BỘ các file g00 thành file png/jpg và xml đi kèm (nếu có), có thể tạo trước một thư mục "output", gõ `vaconv-cpp.exe *.g00 -d output` và các file đầu ra sẽ được đưa vào trong đó. Quá trình này có thể tốn nhiều hơn 5 phút tùy số lượng file g00 và độ khỏe của máy.
		
Sau khi chỉnh sửa và muốn chuyển các file ảnh trở lại g00, hãy để các file xml và png/jpg tương ứng vào cùng một thư mục với vaconv-cpp.exe sau đó gõ lệnh `vaconv-cpp.exe *.png` để chuyển các file png trở lại thành g00 và `vaconv-cpp.exe *.jpg` chức năng tương tự dành cho các file jpg.
		
Các file đầu ra chính là các file .g00.



# 4. Làm việc với OMV (Chưa hoàn thiện :skull:)

## 4.1 chuyển đổi .omv -> .avi

Sử dụng Omv2Avi.exe, mở cmd gõ lệnh `omv2avi.exe xyz` với xyz là file .omv (đã bao gồm đuôi file). Sau đó bạn sẽ nhận được 1 video .avi chưa nén tức dung lượng sẽ tương đối lớn, hãy nén lại bằng bất cứ phần mềm gì bạn kiếm được (ví dụ như virtualdub)

## 4.2 chuyển đổi .avi -> .ogv

Sử dụng ffmpeg, Mở cmd gõ `ffmpeg -i xyz -codec:v libtheora -qscale:v 10 -pix_fmt yuv444p abc.ogv` với xyz là tên của video cần chuyển đổi (đã bao gồm đuôi file) và abc là tên của video ogv. 

## 4.3 Chuyển đổi .ogv -> .omv

Sử dụng Python siglus tool, khởi chạy phần mềm và nhấp vào tab "Pack OMV". **OGV file:** trỏ tới video .ogv và **OMV file** trỏ tới file .omv GỐC. Phần mềm sẽ ghi đè lên file .omv gốc và đó chính là thành quả.

