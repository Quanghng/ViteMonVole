const searchbar = document.getElementById("searchbar");
searchbar.addEventListener("keyup", (e) => {
    const searchString = e.target.value.toLowerCase();
    console.log(searchString);
    const valeurs = document.querySelectorAll("#li");
    for(let i=0; i<valeurs.length;i++){
        console.log(i);
        if(valeurs[i].textContent.toLowerCase().includes(searchString) == false){
            valeurs[i].style.display = 'none';
        }
        else{
            valeurs[i].style.display = 'block';
        }
    }
});
