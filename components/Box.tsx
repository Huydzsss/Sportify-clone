import { twMerge } from "tailwind-merge";

interface BoxProps {
    children: React.ReactNode; // sửa tên prop `Children` thành `children`
    className?: string; // sửa tên prop `ClassName` thành `className` và kiểu thành `string`
}

const Box: React.FC<BoxProps> = ({ children, className }) => {
    return (
        <div className={twMerge("bg-neutral-900 rounded-lg h-fit w-full", className)}>
            {children}
        </div>
    );
}

export default Box;
