1. Làm việc với file scene bằng Python siglus tool
	1.1 Tìm key
		Để tìm được Key của game, mở game lên và sau đó chọn "Find Key"
	1.2 Unpack scene
		Trỏ "Scene file:" đến file Scene.pck. Đợi một lúc bạn sẽ có một thư mục "Scene" chứa các file .ss
	1.3 Dump ss
		Trỏ "Ss folder:" đến thư mục "Scene" vừa tạo
		Tích các ô "Copy text" "Export as xlsx" "Use single xlsx" "No filter". Sau đó bạn sẽ nhận được thư mục Text chưa một file excel duy nhất, đó chính file chứa phần lớn các câu thoại của game.
	1.4 Pack ss
		Dịch xong thì cần đóng gói lại. "Ss folder:" trỏ đến thư mục chứa các file .ss, "Text folder:" trỏ đến thư mục chứa file excel.
		Tích "Have excel text"
	1.5 Pack scene
		"Scene file:" trỏ đến thư mục chứa các file .ss đã dịch (Thường sẽ chính là folder "Output"). "Scene folder:" trỏ đến thư mục chứa các file .ss cũ
		BỎ tích "Double encryption"
		File Scene.pck2 chính là thành phẩm cuối cùng, đưa vào thư mục game và đổi tên file scene thành "Scene.pck"