const computeTotalPrice = (startDate, endDate) => {
  // vérifier que les valeurs ne soient pas vide - .value derrière ce qu'on cherche (if)
  if (startDate.value != "" && endDate.value != "") {
  // à partir des dates, les transformer en format date JS
    const parsedStartDate = new Date(startDate.value);
    const parsedEndDate = new Date(endDate.value);
    // console.log(parsedStartDate);
    // console.log(parsedEndDate);
    // il faut trouver le calcul pour le nbre de jours
    const totalDays = (parsedEndDate - parsedStartDate) / 86400000;
    // récupérer le prix par jour (dans le html)
    const price = document.getElementById("total-price");
    console.log(price);
    // le trsformer en integer en JS
    const intPrice = parseFloat(price.dataset.priceperday);
    // console.log(intPrice);
    // faire le calcul du prix total
    const totalPrice = totalDays * intPrice;
    // console.log(totalPrice);
    // l'insérer dans le html au Total:
    console.log(totalPrice);
    price.innerHTML = `Total : ${totalPrice} €`
  }
}


const initTotalPrice = () => {
  // get avec id le start_date
  const startDate = document.getElementById("start-date");
  // console.log(startDate);
  // pareil pour end_date
  const endDate = document.getElementById("end-date");
  // console.log(endDate);
  if (startDate && endDate) {
  // ajouter un addeventlistener change sur start & end
  startDate.addEventListener("change", () => computeTotalPrice(startDate, endDate));
  endDate.addEventListener("change", () => computeTotalPrice(startDate, endDate));
  }
}

export { initTotalPrice };
