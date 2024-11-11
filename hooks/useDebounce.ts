import { useEffect, useState } from "react";

// Định nghĩa hook `useDebounce` với kiểu generic `T` để có thể sử dụng cho mọi loại dữ liệu
function useDebounce<T>(value: T, deplay?: number): T {
  // Khai báo state để lưu giá trị sau khi debounce, khởi tạo giá trị ban đầu là `value`
  const [debounceValue, setDebounceValue] = useState<T>(value);

  // Sử dụng useEffect để theo dõi sự thay đổi của `value` và `deplay`
  useEffect(() => {
    // Tạo một bộ đếm thời gian (`timer`) để chờ đợi một khoảng thời gian trước khi cập nhật giá trị debounce
    const timer = setTimeout(() => {
      setDebounceValue(value); // Cập nhật giá trị sau khi hết thời gian debounce
    }, deplay || 500); // Nếu không truyền `deplay`, mặc định là 500ms

    // Dọn dẹp bộ đếm thời gian khi `value` hoặc `deplay` thay đổi hoặc khi component bị unmount
    return () => {
      clearTimeout(timer); // Hủy bỏ bộ đếm thời gian cũ
    };
  }, [value, deplay]); // Mỗi khi `value` hoặc `deplay` thay đổi, sẽ thực thi lại hiệu ứng

  // Trả về giá trị đã được debounce
  return debounceValue;
}

export default useDebounce;
//code này dùng để trì hoãn việc gọi api trong search form...