import { getSongsByUserTitle } from "@/actions/getSongsByTitle";
import Header from "@/components/Header";
import SearchInput from "@/components/SearchInput";
import SearchContent from "./components/SearchContent";

interface SearchProps {
    searchParams: {
      title: string;
    };
  }
// Đánh dấu là async để có thể sử dụng await trong function
const Search = async ({ searchParams }: SearchProps) => {
    // Đảm bảo gọi hàm bất đồng bộ với await
    const songs = await getSongsByUserTitle(searchParams.title);
    return(
        <div className="
        bg-neutral-900
        rounded-lg
        h-full
        w-full
        overflow-hidden
        overflow-y-auto

        ">
            <Header className="
            from-bg-neutral-900
            ">
                <div className="
                mb-2
                flex
                flex-col
                gap-y-6

                ">
                    <h1 className="font-semibold text-3xl text-white">
                        Search
                    </h1>
                    <SearchInput/>
                </div>
            </Header>
            <SearchContent songs={songs}/>
        </div>
    )
}
export default Search;