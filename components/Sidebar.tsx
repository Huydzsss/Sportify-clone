"use client";
import { usePathname } from "next/navigation";
import { ReactNode, useMemo } from "react";
import { BiSearch } from "react-icons/bi";
import { HiHome } from "react-icons/hi";
import Box from "./Box";
import SidebarItem from "./SidebarItem";
import Library from "./Library";
import { Song } from "@/type";
import { twMerge } from "tailwind-merge";
import Player from "./Player";
import usePlayer from "@/hooks/userPlayer";

// Định nghĩa giao diện `SidebarProps` với một prop `children` có kiểu là `ReactNode`
interface SidebarProps {
    children: ReactNode; // Đây là nơi chứa các thành phần con sẽ được render trong Sidebar
    songs:Song[];
}

// Định nghĩa component `Sidebar` kiểu `React.FC` với prop là `SidebarProps`
const Sidebar: React.FC<SidebarProps> = ({ children,songs }) => {
    // Sử dụng `usePathname` để lấy đường dẫn hiện tại
    const pathname = usePathname();
    const player = usePlayer();
    // Sử dụng `useMemo` để tạo danh sách các route
    const routes = useMemo(() => [
        {
            icon: HiHome,
            label: 'Home',
            active: pathname !== '/search',
            href: '/'
        },
        {
            icon: BiSearch,
            label: 'Search',
            active: pathname === '/search',
            href: '/search'
        }
    ], [pathname]);

    return (
        <div className={twMerge(`
        flex
        h-full
        `,player.activeId && "h-[calc(100% - 30px)]")}>
            {/* Sidebar chỉ hiện trên màn hình medium trở lên */}
            <div className="hidden md:flex flex-col gap-y-2 bg-black h-full w-[300px] p-2">
                <Box>
                    <div className="flex flex-col gap-y-4 px-5 py-4">
                        {/* Duyệt qua các route và render SidebarItem */}
                        {routes.map((item) => (
                            <SidebarItem 
                                key={item.label} // Đảm bảo mỗi item có `key`
                                {...item} // Truyền tất cả các prop vào SidebarItem
                            />
                        ))}
                    </div>
                </Box>
                <Box className="overflow-y-auto h-full">
                   <Library songs={songs}/>
                </Box>
            </div>
            {/* Phần nội dung của Sidebar */}
            <main className="h-full flex-1 overflow-y-auto py-2">
                {children}
            </main>
        </div>
    ); // Kết thúc câu lệnh `return`
}

// Xuất component `Sidebar` để sử dụng ở nơi khác trong ứng dụng
export default Sidebar;
