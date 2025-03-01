import { forwardRef } from 'react';

const Card = forwardRef(({ 
  children, 
  variant = 'default', 
  padding = 'md',
  className = '',
  ...props 
}, ref) => {
  const baseStyles = "rounded-lg transition-all";
  
  const variants = {
    default: "bg-white border border-gray-200 shadow-sm",
    primary: "bg-teal/5 border border-teal/20",
    secondary: "bg-orange-DEFAULT/5 border border-orange-DEFAULT/20",
    outline: "bg-white border border-gray-300",
    elevated: "bg-white border border-gray-100 shadow-md"
  };
  
  const paddings = {
    none: "",
    sm: "p-4",
    md: "p-6",
    lg: "p-8"
  };
  
  return (
    <div
      ref={ref}
      className={`${baseStyles} ${variants[variant]} ${paddings[padding]} ${className} hover:-translate-y-1 transition-transform`}
      {...props}
    >
      {children}
    </div>
  );
});

Card.displayName = 'Card';

export default Card;
