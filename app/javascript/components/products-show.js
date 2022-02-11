const productShow = () => {
  const input = document.getElementById('quantity');
  const totalPrice = document.getElementById('total-price');
  const unitPrice = document.getElementById('unit-price');
  const ivaPrice = document.getElementById('iva-price');
  const serigrafiaBox = document.getElementById('serigrafia');

  var myElement = document.getElementById('pricesss');
  var prices = JSON.parse(myElement.dataset.prices);
  let serigrafia = [0, 0, 0, 0]

  input.addEventListener('change', updateValue);
  serigrafiaBox.addEventListener('change', addSerigrafia);

  function updateValue(e) {
    if (input.value < 5){
      totalPrice.textContent = input.value * (prices[0] + serigrafia[0]);
      unitPrice.textContent = (prices[0] + serigrafia[0]);
      ivaPrice.textContent = (input.value * (prices[0] + serigrafia[0])) * 1.21;
    }else{
      if(input.value < 10){
        totalPrice.textContent = input.value * (prices[1] + serigrafia[1]);
        unitPrice.textContent = (prices[1] + serigrafia[1]);
        ivaPrice.textContent = (input.value * (prices[1] + serigrafia[1])) * 1.21;
      }else{
        if(input.value < 25){
          totalPrice.textContent = input.value * (prices[2] + serigrafia[2]);
          unitPrice.textContent = (prices[2] + serigrafia[2]);
          ivaPrice.textContent = (input.value * (prices[2] + serigrafia[2])) * 1.21;
        }else{
          totalPrice.textContent = input.value * (prices[3] + serigrafia[3]);
          unitPrice.textContent = (prices[3] + serigrafia[3]);
          ivaPrice.textContent = (input.value * (prices[3] + serigrafia[3])) * 1.21;
        }
      }
    }
  }

  function addSerigrafia(e) {
    if (serigrafiaBox.checked){
      serigrafia = [5, 4, 3, 2]
    }else{
      serigrafia = [0, 0, 0, 0]
    }
    if (input.value !== null){
      updateValue()
    }
  }
}
export { productShow };
