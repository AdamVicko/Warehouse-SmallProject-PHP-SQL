

//Pozivanje pop-up modala i sakrivanje svega "iza njega"
document.querySelector(`#registration`).addEventListener(`click`, () => {
    document.querySelector(`.custom-modal`).style.display = `block`
    document.querySelector(`.main-wrapper`).style.display = `none`
    document.querySelector(`.no-acc-register`).style.display = `none`
});
//Gasenje modala na x i pozivanje svega na stranici nazad
document.querySelector(`#closeModal`).addEventListener(`click`, () => {
    document.querySelector(`.custom-modal`).style.display = `none`
    document.querySelector(`.main-wrapper`).style.display = `block`
    document.querySelector(`.no-acc-register`).style.display = `block`
});