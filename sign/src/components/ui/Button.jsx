import { forwardRef } from 'react';

const Button = forwardRef(({ 
  children, 
  variant = 'primary', 
  size = 'md',
  className = '',
  ...props 
}, ref) => {
  const baseStyles = "rounded-lg flex items-center justify-center gap-2 font-medium transition-colors";
  
  const variants = {
    primary: "bg-teal text-white hover:bg-teal/90",
    secondary: "border border-teal text-teal hover:bg-teal/10",
    outline: "border border-gray-300 text-gray-700 hover:border-teal hover:text-teal",
    white: "bg-white text-teal hover:bg-gray-50"
  };
  
  const sizes = {
    sm: "px-4 py-2 text-sm",
    md: "px-6 py-3",
    lg: "px-8 py-4 text-lg"
  };
  
  return (
    <button
      ref={ref}
      className={`${baseStyles} ${variants[variant]} ${sizes[size]} ${className}`}
      {...props}
    >
      {children}
    </button>
  );
});

Button.displayName = 'Button';

export default Button;