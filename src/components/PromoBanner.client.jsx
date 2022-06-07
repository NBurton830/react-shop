// Shopify Promo Banner/Announcement Bar  with text input 
function PromoBanner(props) {
    
    return (
        // full width container with text centered with a background color of props.color
        <div 
        // if props.color is not defined, use the default color
        className={`w-full bg-${props.color || '#000'}`}
        >
            {/* text from props.text */}
            <div className="text-center text-white text-xl font-bold p-4">
                {props.text}
            </div>
        </div> 
    );
}