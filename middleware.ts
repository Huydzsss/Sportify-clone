// Import các hàm và kiểu dữ liệu cần thiết từ `@supabase/auth-helpers-nextjs` và `next/server`.
import { createMiddlewareClient } from "@supabase/auth-helpers-nextjs";
import { NextRequest, NextResponse } from "next/server";

// Định nghĩa hàm middleware để xử lý yêu cầu từ người dùng.
// Hàm này là một middleware trong Next.js, sẽ chạy mỗi khi có yêu cầu (request) gửi tới server.
export async function middleware(req: NextRequest) {
    // Tạo một phản hồi mặc định cho yêu cầu hiện tại.
    // `NextResponse.next()` sẽ cho phép yêu cầu tiếp tục tới endpoint tiếp theo.
    const res = NextResponse.next();

    // Tạo một instance của Supabase middleware client, truyền `req` và `res` để nó có thể
    // quản lý session (phiên) và các thao tác khác liên quan đến xác thực.
    const supabase = createMiddlewareClient({
        res, // Đối tượng phản hồi Next.js
        req  // Đối tượng yêu cầu Next.js
    });

    // Lấy thông tin session hiện tại từ Supabase.
    // `supabase.auth.getSession()` sẽ kiểm tra phiên đăng nhập của người dùng hiện tại.
    await supabase.auth.getSession();

    // Trả về đối tượng phản hồi `res`, cho phép yêu cầu tiếp tục tới các endpoint tiếp theo.
    return res;
}
