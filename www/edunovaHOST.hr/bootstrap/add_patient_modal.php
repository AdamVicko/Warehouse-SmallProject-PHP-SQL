<!--POP UP MODAL-->
<div class="custom2-modal">

<button id="close_custom2_modal">X</button>

    <form id="add_patient">
        <div>
            <label>Name and Surname:</label>
            <input type="text" name="register_patient_name" id="register_patient_name" placeholder="Name and Surname">
        </div>

        <div>
            <label>Adress:</label>
            <input type="text" name="register_patient_adress" id="register_patient_adress" placeholder="Adress">
        </div>

        <div>
            <label>Phone:</label>
            <input type="text" name="register_patient_phone" id="register_patient_phone" placeholder="09...">
        </div>

        <div>
            <label>Serial Number:</label>
            <input type="text" name="register_patient_serial_number" id="register_patient_serial_number" placeholder="OXYGEN">
        </div>

        <div>
            <label>Date of delivery:</label>
            <input type="date" name="delivery_date" id="delivery_date" placeholder="01.01.2000">
        </div>

        <div>
            <label>Date of collection:</label>
            <input type="date" name="collection_date" id="collection_date" placeholder="01.01.2000">
        </div>

        <div>
            <label>Comment:</label>
            <textarea class="form-control"></textarea>
        </div>

    </form>

    <button id="confirm_patient">Confirm Patient</button>
</div>