const btn = document.querySelector('.btn');
const first = document.querySelector('.select');
const second = document.querySelector('.second');
const rating = document.querySelector('.rating');
const radios = document.querySelectorAll('input[type="radio"]')
btn.onclick = function(event){
    event.preventDefault();
    let selectRating;
    for(const radio of radios){
        if(radio.checked){
            first.classList.toggle('hidden');
            second.classList.toggle('hidden');  
            selectRating = radio.value;
            break;
        }
    }
    rating.textContent = selectRating;
}