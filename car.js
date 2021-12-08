let obj = document.querySelector("#image");
let moveby = 6;

window.addEventListener('load', () => {
    obj.style.position = 'fixed';
    obj.style.right = 0;
    obj.style.top = 0;
})

window.addEventListener("keydown", (e) => {
    switch(e.key){
        case 'ArrowLeft':
            obj.classList.remove("trans");     
            obj.classList.remove("rotdown");         
            obj.classList.remove("flipX");
            obj.classList.remove("rotup");
            obj.style.right = parseInt(obj.style.right) + 2*moveby + 'px';
            break; 
        case 'ArrowRight':
            obj.classList.remove("rotup"); 
            obj.classList.remove("trans"); 
            obj.classList.remove("rotdown");   
            obj.classList.add("flipX");
            obj.style.right = parseInt(obj.style.right) - 2*moveby + 'px';
            break; 
        case 'ArrowUp':
            obj.classList.remove("trans");
            obj.classList.remove("rotdown");
            obj.classList.add("rotup");
            obj.style.top = parseInt(obj.style.top) - moveby + 'px';
            break;
        case 'ArrowDown':
            if (obj.classList.contains("flipX"))
                obj.classList.add("trans");
            obj.classList.add("rotdown");
            obj.style.top = parseInt(obj.style.top) + moveby + 'px';
            break;  
    }
})