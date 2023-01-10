<!--POP UP MODAL-->
<div class=" container custom2-modal">

<button id="closecustom2modal">X</button>

    <form id="addpatient">

        <div>
            <label>Name and Surname:</label>
            <input type="text" name="registerpatientname" id="registerpatientname" placeholder="Name and Surname">
        </div>

        <div>
            <label>Adress:</label>
            <input type="text" name="registerpatientadress" id="registerpatientdress" placeholder="Adress">
        </div>

        <div>
            <label>Phone:</label>
            <input type="text" name="registerpatientphone" id="registerpatientphone" placeholder="09...">
        </div>

        <div>
            <label>Serial Number:</label>
            <input type="text" name="registerpatientserialnumber" id="registerpatientserialnumber" placeholder="OXYGEN">
        </div>

        <div>
            <label>Date of delivery:</label>
            <input type="date" name="deliverydate" id="deliverydate" placeholder="01.01.2000">
        </div>

        <div>
            <label>Date of collection:</label>
            <input type="date" name="collectiondate" id="collectiondate" placeholder="01.01.2000">
        </div>

        <div>
            <label>Comment:</label>
            <textarea class="form-control"></textarea>
        </div>

    </form>

    <button id="confirmpatient">Confirm Patient</button>
</div>