var battle = new RPG.Battle();
var actionForm, spellForm, targetForm;
var infoPanel;

function prettifyEffect(obj) {
    return Object.keys(obj).map(function (key) {
        var sign = obj[key] > 0 ? '+' : ''; // show + sign for positive effects
        return `${sign}${obj[key]} ${key}`;
    }).join(', ');
}

battle.setup({
    heroes: {
        
        members: insertaHeroesAleatorios(),

        grimoire: [
            RPG.entities.scrolls.health,
            RPG.entities.scrolls.fireball
        ]
    },
    monsters: {
      
        members: insertaMonstruosAleatorios(),

    }

});

function insertaHeroesAleatorios()
{

    var numTank = getRandomArbitrary(0,2);
    var numWizz = getRandomArbitrary(0,2);

    members = [];
    for(var i = 0; i < numTank; i++)
        members.push(RPG.entities.characters.heroTank);

    for(var i = 0; i < numWizz; i++)
        members.push(RPG.entities.characters.heroWizard);

    return members;
}

function insertaMonstruosAleatorios()
{

    var numSlime = getRandomArbitrary(-1,2);
    var numBat = getRandomArbitrary(0,3);
    var numSkeleton = getRandomArbitrary(-1,2);

    members = [];
    for(var i = 0; i < numSlime; i++)
        members.push(RPG.entities.characters.monsterSlime);

    for(var i = 0; i < numBat; i++)
        members.push(RPG.entities.characters.monsterBat);

    for(var i = 0; i < numSkeleton; i++)
        members.push(RPG.entities.characters.monsterSkeleton);

    return members;
}

function getRandomArbitrary(min, max) 
{
    return Math.random() * (max - min) + min;
}

function insertar (list,listHTML,idPersonaje)
    {
        var i = 0;
        var li; 
        
        form = listHTML.querySelector('[class=character-list]');
        form.innerHTML = "";
        for (var character in list)
        {
            //Declaro una variable para elegir donde quiero crear la lista(dentro de character-list)            
            li = document.createElement('li');//lista nueva donde se van a insertar los personajes en el HTML
            personaje = list[character];//Guardo en la variable auxiliar el contenido del personaje actual de la lista
            
            //8. MARCAR PERSONAJES COMO MUERTOS
            if (personaje.hp <= 0)
                li.classList.add('dead');

            li.innerHTML += personaje.name + " (HP:" + '<strong>' +  //strong sirve para poner las letras en negrita
            personaje.hp + '</strong>' + "/" + personaje.maxHp + 
            ", MP: " + '<strong>' + personaje.mp + '</strong>'+ "/" + 
            personaje.maxMp + ")";

            li.dataset.charaId = idPersonaje[i]; //Añado una etiqueta a la lista de personajes [charaId]
            form.appendChild(li); //Regresa una referencia al "nodo" creado
            i++;
        }
    

    }

function render ()
{
    //1. MOSTRAR LOS PERSONAJES
    // TODO: render the characters
    var listHeroes = battle.characters.allFrom("heroes"); // Creamos la lista y la obtenemos del objeto charactersById
    var listMonstruos = battle.characters.allFrom("monsters");

    //Guardamos en un array los nombres de los personajes
    var idHeroes = Object.keys(listHeroes);
    var idMonstruos = Object.keys(listMonstruos);

    var listHeroesHTML = document.getElementById('heroes'); //Creamos una lista que viene definida en el HTML
    var listMonstruosHTML  = document.getElementById('monsters');
    var personaje;//Variable que contiene el personaje actual segun la lista de personajes
    var form = [];


    insertar(listHeroes,listHeroesHTML, idHeroes);
    insertar(listMonstruos,listMonstruosHTML,idMonstruos);

    //1. MOSTRAR LOS PERSONAJES///

}

battle.on('start', function (data) {
    console.log('START', data);
});

battle.on('turn', function (data) {
    console.log('TURN', data);
    
    render();

    //2.MOSTRAR EL PERSONAJE SELECCIONADO
    // TODO: highlight current character

    var personajeActual = data.activeCharacterId;//Obtenemos el personaje actual
    //Obtenemos donde se encuentra el personaje en la lista
    var seleccionaPsj = document.querySelector('[data-chara-id=\"'+ personajeActual +'\"]');
   
    if(data.party === 'heroes')
        seleccionaPsj.classList.add('heroes');

    else if(data.party === 'monsters')
        seleccionaPsj.classList.add('monsters');

    //2.MOSTRAR EL PERSONAJE SELECCIONADO///


    //3. MOSTRAR EL MENÚ DE ACCIONES DE BATALLA
    // TODO: show battle actions form

    actionForm.style.display = 'inline';//Modificamos el estilo del boton para que se vea por pantalla
    var opciones = this.options.list();//Array con las opciones
    //Si le toca atacar a un enemigo, desactivamos la opción de lanzar un hechizo
    if (data.party === 'monsters')
        opciones.pop();

    var seleccion = actionForm.querySelector('[class=choices]');//Lugar donde deben ir las opciones(dentro de choices)
    seleccion.innerHTML = "";

    opciones.forEach(function(opcion){
        var li = document.createElement('li');//Creamos una nueva lista
        //Añadimos las opciones a la lista 
        li.innerHTML = '<label><input type="radio" name="option" value=' + opcion + '> <strong>' +opcion+ '</strong></label>'

        seleccion.appendChild(li);//Hace hijo al elemento seleccion de HTML
    });

    //3. MOSTRAR EL MENÚ DE ACCIONES DE BATALLA///

    //5. SELECCIONAR UN OBJETIVO
    targetForm.style.display = 'none';//Modificamos el estilo del boton para que se vea por pantalla
    var objetivos = this._charactersById;;//Array con las opciones
    var seleccionObj = targetForm.querySelector('[class=choices]');//Lugar donde deben ir las opciones(dentro de choices)
    seleccionObj.innerHTML = "";

    for(var opcion in objetivos)
    {
        if (objetivos[opcion].hp > 0)
        {
            var li = document.createElement('li');//Creamos una nueva lista
            //Añadimos las opciones a la lista 
            li.innerHTML = '<label><input type="radio" name="target" value=\"' + opcion + '\""> <strong>' +opcion+ '</strong></label>'

            seleccionObj.appendChild(li);//Hace hijo al elemento seleccion de HTML
        }

    }

    //5. SELECCIONAR UN OBJETIVO///

    //6. SELECCIONAR UN HECHIZO

    spellForm.style.display = 'none';//Modificamos el estilo del boton para que se vea por pantalla
    var hechizos = this._grimoires[this._activeCharacter.party];//Array con las opciones
    var seleccionHechizos = spellForm.querySelector('[class=choices]');//Lugar donde deben ir las opciones(dentro de choices)
    seleccionHechizos.innerHTML = "";

    var pjActivo = this._charactersById[data.activeCharacterId];

    for(var hechizo in hechizos)
    {
        if (pjActivo.mp >= hechizos[hechizo].cost)
        {
            var li = document.createElement('li');//Creamos una nueva lista
            //Añadimos las opciones a la lista 
            li.innerHTML = '<label><input type="radio" name="spell" value=' + hechizo + '> <strong>' +hechizo+ '</strong></label>'

            seleccionHechizos.appendChild(li);//Hace hijo al elemento seleccion de HTML
        }
    }
    
    var button = spellForm.querySelector('[type=submit]');

     if(spellForm.elements.length === 1)
         button.disabled = true;
    else
         button.disabled = false;

    //6. SELECCIONAR UN HECHIZO///
});

battle.on('info', function (data) {
    console.log('INFO', data);
    //7. PANEL DE INFORMACIÓN
    // TODO: display turn info in the #battle-info panel

    var effectsTxt = prettifyEffect(data.effect || {});

    switch(data.action){
        case "attack":
            if(data.success){
                infoPanel.innerHTML='<strong>' + data.activeCharacterId + '</strong>' + " " + data.action 
                + "ed " + '<strong>' + data.targetId + '</strong>'+ " and caused " + effectsTxt;
            }
            else{
               infoPanel.innerHTML='<strong>' + data.activeCharacterId + '</strong>' + " " + data.action 
                + "ed " + '<strong>' + data.targetId + '</strong>' +" and failed";
            }
            break;
        case "defend":
                infoPanel.innerHTML='<strong>' + data.activeCharacterId + '</strong>' + " " + data.action 
                + "ed and his new defense is " + data.newDefense; 
                break;
        case "cast":
            if(data.success){
                infoPanel.innerHTML='<strong>' + data.activeCharacterId + '</strong>' + " " + data.action 
                + "ed " + data.scrollName + " on " +'<strong>' + data.targetId + '</strong>'+ " and caused " + effectsTxt;
            }
            else{
               infoPanel.innerHTML='<strong>' + data.activeCharacterId + '</strong>' + " " + data.action 
                + "ed " + data.scrollName + " on " +'<strong>' + data.targetId + '</strong>' + " and failed";
            }
            break;

    }

    //7. PANEL DE INFORMACIÓN///

});

battle.on('end', function (data) {
    console.log('END', data);

    //9. FINAL DEL JUEGO
    
    // TODO: re-render the parties so the death of the last character gets reflected
    render();

    // TODO: display 'end of battle' message, showing who won
    actionForm.style.display = 'none';

    infoPanel.innerHTML = "Battle is over! Winners were: " + '<strong>' + data.winner + '</strong>'
    +' <button type="submit"onClick="history.go(0)">New battle?</button>';

    //9. FINAL DEL JUEGO///
});

window.onload = function () {
    actionForm = document.querySelector('form[name=select-action]');
    targetForm = document.querySelector('form[name=select-target]');
    spellForm = document.querySelector('form[name=select-spell]');
    infoPanel = document.querySelector('#battle-info');

    actionForm.addEventListener('submit', function (evt) {
        evt.preventDefault();

        //4. SELECCIONAR ACCIÓN

        // TODO: select the action chosen by the player
        var action= actionForm.elements['option'].value;

        battle.options.select(action);
        actionForm.classList.add('required');
        
        // TODO: hide this menu

        actionForm.style.display = 'none';

        // TODO: go to either select target menu, or to the select spell menu

        if(action === 'attack'){
            targetForm.style.display = 'block';
        }
        else if(action === 'cast'){
            spellForm.style.display = 'block';
        }
        else if(action !== 'defend'){
            actionForm.style.display = 'block';
        }

        ///4. SELECCIONAR ACCIÓN

    });

    //5. SELECCIONAR UN OBJETIVO

    targetForm.addEventListener('submit', function (evt) {
        evt.preventDefault();
        
        // TODO: select the target chosen by the player
        var objetivo= targetForm.elements['target'].value;
        battle.options.select(objetivo);
        targetForm.classList.add('required');

        // TODO: hide this menu
        targetForm.style.display = 'none';
        actionForm.style.display = 'block';

    });

    targetForm.querySelector('.cancel')
    .addEventListener('click', function (evt) {
        evt.preventDefault();
        
        // TODO: cancel current battle options
        battle.options.cancel();
        // TODO: hide this form
        targetForm.style.display = 'none'; // oculta el formulario de acciones
        // TODO: go to select action menu
        actionForm.style.display = 'inline';

    });

    //5. SELECCIONAR UN OBJETIVO///

    //6. SELECCIONAR UN HECHIZO

    spellForm.addEventListener('submit', function (evt) {
        evt.preventDefault();
        // TODO: select the spell chosen by the player
        var hechizo= this.elements['spell'].value;
        battle.options.select(hechizo);
        // TODO: hide this menu
        spellForm.classList.add('required');
        spellForm.style.display = 'none';
        // TODO: go to select target menu
        targetForm.style.display = 'block';
             
    });

    spellForm.querySelector('.cancel')
    .addEventListener('click', function (evt) {
        evt.preventDefault();
        // TODO: cancel current battle options
        battle.options.cancel();
        // TODO: hide this form
        spellForm.style.display = 'none';
        // TODO: go to select action menu
        actionForm.style.display = 'inline';
    });

    //6. SELECCIONAR UN HECHIZO///


    battle.start();
};