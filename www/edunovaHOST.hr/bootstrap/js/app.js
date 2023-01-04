//Pozivanje pop-up modala i sakrivanje svega "iza njega"
document.querySelector(`#add_patient_popup_btn`).addEventListener(`click`, () => {
    document.querySelector(`.custom2-modal`).style.display = `block`

});
//Gasenje modala na x i pozivanje svega na stranici nazad
document.querySelector(`#close_custom2_modal`).addEventListener(`click`, () => {
    document.querySelector(`.custom2-modal`).style.display = `none`
});