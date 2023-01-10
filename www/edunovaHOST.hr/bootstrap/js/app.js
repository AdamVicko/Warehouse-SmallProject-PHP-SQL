//Pozivanje pop-up modala i sakrivanje svega "iza njega"
document.querySelector(`#addpatientpopupbtn`).addEventListener(`click`, () => {
    document.querySelector(`.custom2-modal`).style.display = `block`

});
//Gasenje modala na x i pozivanje svega na stranici nazad
document.querySelector(`#closecustom2modal`).addEventListener(`click`, () => {
    document.querySelector(`.custom2-modal`).style.display = `none`
});