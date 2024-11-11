import { Song } from "@/type"; // Import kiểu dữ liệu cho bài hát từ loại định nghĩa
import { useSessionContext } from "@supabase/auth-helpers-react"; // Import Supabase context để truy cập vào client Supabase
import { useEffect, useMemo, useState } from "react"; // Các hook từ React để quản lý trạng thái và hiệu suất
import toast from "react-hot-toast"; // Import thư viện thông báo lỗi

// Custom hook để lấy thông tin bài hát theo ID
const useGetSongById = (id?: string) => {
  // Khởi tạo các state để lưu trạng thái loading và dữ liệu bài hát
  const [isLoading, setIsLoading] = useState(false);
  const [song, setSong] = useState<Song | undefined>(undefined); // Định nghĩa song có kiểu dữ liệu là Song hoặc undefined
  const { supabaseClient } = useSessionContext(); // Lấy client Supabase từ context

  // useEffect để thực thi khi component được mount hoặc id thay đổi
  useEffect(() => {
    // Nếu không có id, không thực hiện gì
    if (!id) {
      return;
    }
    setIsLoading(true); // Đánh dấu trạng thái đang tải

    // Hàm để fetch dữ liệu bài hát từ Supabase
    const fetchSong = async () => {
      // Thực hiện gọi API của Supabase để lấy dữ liệu bài hát theo id
      const { data, error } = await supabaseClient
        .from('songs') // Từ bảng 'songs'
        .select('*') // Lấy tất cả trường dữ liệu
        .eq('id', id) // Tìm bài hát với id tương ứng
        .single(); // Chỉ lấy một bản ghi (do id là duy nhất)

      // Nếu có lỗi xảy ra, dừng trạng thái loading và hiển thị thông báo lỗi
      if (error) {
        setIsLoading(false);
        return toast.error(error.message);
      }
      // Cập nhật dữ liệu bài hát vào state
      setSong(data as Song); 
      setIsLoading(false); // Kết thúc trạng thái loading
    };

    fetchSong(); // Gọi hàm fetchSong

  }, [id, supabaseClient]); // useEffect sẽ chạy lại khi id hoặc supabaseClient thay đổi

  // Sử dụng useMemo để chỉ cập nhật khi isLoading hoặc song thay đổi
  return useMemo(() => ({
    isLoading, // Trả về trạng thái loading
    song, // Trả về dữ liệu bài hát
  }), [isLoading, song]); // Chỉ cập nhật khi isLoading hoặc song thay đổi
};

export default useGetSongById; // Export custom hook
