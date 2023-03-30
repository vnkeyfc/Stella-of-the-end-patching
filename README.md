# 1. Làm việc với file scene bằng Python siglus tool

## 1.1 Tìm key 
		
Để tìm được Key của game, mở game lên và sau đó chọn **Find Key**
	
	
## 1.2 Unpack scene
	
Trỏ **Scene file:** đến file "Scene.pck". Đợi một lúc bạn sẽ có một thư mục "Scene" chứa các file .ss
		
		
## 1.3 Dump ss
		
Trỏ **Ss folder:** đến thư mục "Scene" vừa tạo.
	
Tích các ô **Copy text**, **Export as xlsx**, **Use single xlsx**, **No filter**. Sau đó bạn sẽ nhận được thư mục Text chưa một file excel duy nhất, đó chính file chứa phần lớn các câu thoại của game.
	
	
## 1.4 Pack ss
		
Dịch xong thì cần đóng gói lại. **Ss folder:** trỏ đến thư mục chứa các file .ss, **Text folder:** trỏ đến thư mục chứa file excel.
	
Tích "Have excel text"
	
	
## 1.5 Pack scene
		
**Scene file:** trỏ đến thư mục chứa các file .ss đã dịch (Thường sẽ chính là folder "Output"). **Scene folder:** trỏ đến thư mục chứa các file .ss cũ.
	
BỎ tích **Double encryption**.
	
File "Scene.pck2" chính là thành phẩm cuối cùng, đưa vào thư mục game và đổi tên file scene thành "Scene.pck".



# 2. Làm việc với Gameexe.dat
	
## 2.1 Sử dụng Decrypt gameexe
	
Trỏ Gameexe: tới chính file "gameexe.dat", đầu ra sẽ là file "gameexe.ini".
	
	
## 2.2 Sử dụng Encrypt gameexe
	
BỎ tích **Double encryption**, file "gameexe.dat2" là đầu ra, đưa vào thư mục game và đổi tên thành "gamexe.dat".



# 3. Làm việc với các file .g00

## 3.1 Sử dụng vaconv-cpp.exe
		
Nên đưa vaconv-cpp.exe vào thẳng thư mục "g00" cho tiện.
		
Mở cmd gõ `vaconv-cpp.exe *.g00` nếu muốn xuất TOÀN BỘ các file g00 thành file png/jpg và xml đi kèm (nếu có), có thể tạo trước một thư mục "output", gõ `vaconv-cpp.exe *.g00 -d output` và các file đầu ra sẽ được đưa vào trong đó. Quá trình này có thể tốn nhiều hơn 5 phút tùy số lượng file g00 và độ khỏe của máy.
		
Sau khi chỉnh sửa và muốn chuyển các file ảnh trở lại g00, hãy để các file xml và png/jpg tương ứng vào cùng một thư mục với vaconv-cpp.exe sau đó gõ lệnh `vaconv-cpp.exe *.png` để chuyển các file png trở lại thành g00 và `vaconv-cpp.exe *.jpg` chức năng tương tự dành cho các file jpg.
		
Các file đầu ra chính là các file .g00.



# 4. Làm việc với OMV (Chưa hoàn thiện :skull:)
## 4.1 
