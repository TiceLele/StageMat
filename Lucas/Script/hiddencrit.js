//  On charge les id de la pages html sur le script
let togg1 = document.getElementById("togg1");
let d1 = document.getElementById("d1");

//
//  On crée une condition qui quand la ligne "Plus de critères" est cliqué
//  cela va afficher une div contenant le reste des critères
//

togg1.addEventListener("click", () => {
  if(getComputedStyle(d1).display != "block"){
    d1.style.display = "block";
    document.getElementById('togg1').onclick= function() {
      document.getElementById('togg1').innerHTML = "Masquer les critère";
    }
  } else {
    d1.style.display = "none";
    document.getElementById('togg1').onclick= function() {
      document.getElementById('togg1').innerHTML = "Plus de critère"
    }
  }
})