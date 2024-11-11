import type { NextConfig } from "next";

const nextConfig: NextConfig = {
  /* config options here */
  //tránh bị lỗi khi up ảnh nếu bị lỗi tham chiếu từ supabase
  images:{
    domains:[
      "tngantcojeoxalabmhqh.supabase.co"
    ]
  }
};

export default nextConfig;
