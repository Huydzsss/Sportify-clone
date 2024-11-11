import { create } from "zustand";  // Import zustand để tạo store

// Định nghĩa interface cho store
interface PlayerStore {
  ids: string[];  // Danh sách các ID bài hát
  activeId?: string;  // ID bài hát hiện tại đang phát
  setId: (id: string) => void;  // Hàm cập nhật activeId
  setIds: (ids: string[]) => void;  // Hàm cập nhật danh sách IDs
  reset: () => void;  // Hàm reset trạng thái
}

// Tạo store bằng Zustand
const usePlayer = create<PlayerStore>((set) => ({
  ids: [],  // Danh sách bài hát rỗng ban đầu
  activeId: undefined,  // Không có bài hát nào được chọn lúc đầu
  setId: (id: string) => set({ activeId: id }),  // Cập nhật activeId
  setIds: (ids: string[]) => set({ ids: ids }),  // Cập nhật danh sách IDs
  reset: () => set({ ids: [], activeId: undefined }),  // Reset lại store
}));

export default usePlayer;  // Xuất hook để sử dụng ở các component khác
