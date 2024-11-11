"use client";

import useAuthModal from "@/hooks/useAuthModal";
import { useUser } from "@/hooks/useUser";
import { Song } from "@/type";
import { useSessionContext } from "@supabase/auth-helpers-react";
import { useRouter } from "next/navigation";
import { useState, useEffect } from "react";
import toast from "react-hot-toast";
import { AiFillHeart, AiOutlineHeart } from "react-icons/ai";

interface LikeButtonProps {
  songId: string;  // ID của bài hát để xác định bài hát nào đã được like/unlike
}

const LikeButton: React.FC<LikeButtonProps> = ({ songId }) => {
  const router = useRouter();
  const { supabaseClient } = useSessionContext();
  const authModal = useAuthModal();
  const { user } = useUser();  // Lấy thông tin người dùng hiện tại
  const [isLiked, setIsLiked] = useState(false);  // Trạng thái "liked" (true hoặc false)

  // useEffect này sẽ kiểm tra xem bài hát đã được like hay chưa khi component được render
  useEffect(() => {
    if (!user?.id) return;  // Nếu chưa có user thì không làm gì cả

    const fetchData = async () => {
      // Lấy dữ liệu từ bảng "liked_songs" để kiểm tra xem bài hát này đã được like chưa
      const { data, error } = await supabaseClient
        .from("liked_songs")
        .select("*")
        .eq("user_id", user.id)  // Lọc theo user_id của người dùng hiện tại
        .eq("song_id", songId)  // Lọc theo song_id của bài hát
        .single();  // Chỉ lấy 1 bản ghi

      if (!error && data) {
        setIsLiked(true);  // Nếu không có lỗi và có dữ liệu, bài hát đã được like
      }
    };

    fetchData();
  }, [songId, supabaseClient, user?.id]);  // Chạy lại useEffect khi songId hoặc user.id thay đổi

  const Icon = isLiked ? AiFillHeart : AiOutlineHeart;  // Chọn icon tùy vào trạng thái "liked"

  // Hàm xử lý khi người dùng nhấn nút "like"
  const handleLike = async () => {
    if (!user) {
      return authModal.onOpen();  // Nếu chưa đăng nhập, mở modal đăng nhập
    }

    if (isLiked) {
      // Nếu bài hát đã được like, thực hiện un-like
      const { error } = await supabaseClient
        .from("liked_songs")
        .delete()  // Xóa bản ghi khỏi bảng "liked_songs"
        .eq("user_id", user.id)  // Lọc theo user_id
        .eq("song_id", songId);  // Lọc theo song_id

      if (error) {
        toast.error("Error unliking the song");  // Hiển thị thông báo lỗi nếu có
      } else {
        setIsLiked(false);  // Cập nhật lại trạng thái "liked" thành false
        toast.success("Song unliked");  // Hiển thị thông báo thành công
      }
    } else {
      // Nếu bài hát chưa được like, thực hiện like
      const { error } = await supabaseClient
        .from("liked_songs")
        .insert({ user_id: user.id, song_id: songId });  // Thêm bản ghi mới vào bảng "liked_songs"

      if (error) {
        toast.error("Error liking the song");  // Hiển thị thông báo lỗi nếu có
      } else {
        setIsLiked(true);  // Cập nhật trạng thái "liked" thành true
        toast.success("Song liked");  // Hiển thị thông báo thành công
      }
    }
  };

  return (
    <button
      onClick={handleLike}  // Khi nhấn nút sẽ gọi hàm handleLike
      className="hover:opacity-75 transition"
    >
      <Icon color={isLiked ? "#22c55e" : "white"} size={25} />  {/* Chọn màu cho icon */}
    </button>
  );
};

export default LikeButton;
