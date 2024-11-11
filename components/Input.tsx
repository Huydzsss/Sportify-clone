import { forwardRef } from "react";
import { twMerge } from "tailwind-merge";

interface InputPops extends React.InputHTMLAttributes<HTMLInputElement>{

}

const Input = forwardRef<HTMLInputElement,InputPops>(({
    className,
    type,
    disabled,
    ...props
},ref) =>{
    return(
        <input
        type={type}
        className={twMerge(`
            flex
            w-full
            rounded-md
            bg-neutral-700
            px-3
            py-3
            text-sm
            field:border-0
            field:bg-transparent
            field:text-sm
            field:font-medium
            placeholder:text-neutral-400
            disabled:cusor-not-allow
            disabled:opacity-50
            focus:outline-none

            `,className)}
        disabled={disabled}
        ref={ref}
        {...props}
        />
        
    )
});
Input.displayName= "Input"
export default Input;