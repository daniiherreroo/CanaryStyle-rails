function getDatos(show,max,id){
    const xhttp = new XMLHttpRequest();
    if(show == 1){
        xhttp.open('GET', 'camisetasHombre.json', true)
    }else if(show == 2){
        xhttp.open('GET', 'pantalonesHombre.json', true)
    }else if(show == 3){
        xhttp.open('GET', 'chaquetasHombre.json', true)
    }else if(show == 4){
        xhttp.open('GET', 'bañadoresHombre.json', true)
    }else if(show == 5){
        xhttp.open('GET', 'complementosHombre.json', true)
    }else if(show == 6){
        xhttp.open('GET', 'camisetasMujer.json', true)
    }else if(show == 7){
        xhttp.open('GET', 'pantalonesMujer.json', true)
    }else if(show == 8){
        xhttp.open('GET', 'chaquetasMujer.json', true)
    }else if(show == 9){
        xhttp.open('GET', 'bikinisMujer.json', true)
    }else if(show == 10){
        xhttp.open('GET', 'complementosMujer.json', true)
    }else if(show == 11){
        xhttp.open('GET', 'camisetasHombre.json', true)
    }
    xhttp.send()
    xhttp.onreadystatechange = function(){
        if(this.readyState == 4 && this.status == 200){
            let datos = JSON.parse(this.responseText)
            if(show != 11){
                cargarJSON(datos,show,max)
                console.log(datos)
            }else{
                cargarProducto(datos,id)
            }
        }
    }
}
function cargarProducto(json,id) {
    var productoImg = "";
    var productoName = "";
    var productoPrecio = "";
    for(let item of json){
        if(item.id == id){
            productoImg += `
                <img src="${item.source}" alt="${item.nombre}" />
            `
            productoName += item.nombre;

            productoPrecio += `
                <p>Precio: ${item.precio}</p>
            `
        }
    }
    $(".tituloproducto").text(productoName);
    document.getElementById("productoImg").innerHTML = productoImg;
    document.getElementById("productoPrecio").innerHTML = productoPrecio;

}
function cargarJSON(json,show,max){
    var fila = 0;
    var div = "";
    if(show == 1){
        document.getElementById("camisetasHombreId").innerHTML = div;
    }else if(show == 2){
        document.getElementById("pantalonesHombreId").innerHTML = div;
    }else if(show == 3){
        document.getElementById("chaquetasHombreId").innerHTML = div;
    }else if(show == 4){
        document.getElementById("bañadoresHombreId").innerHTML = div;
    }else if(show == 5){
        document.getElementById("complementosHombreId").innerHTML = div;
    }else if(show == 6){
        document.getElementById("camisetasMujerId").innerHTML = div;
    }else if(show == 7){
        document.getElementById("pantalonesMujerId").innerHTML = div;
    }else if(show == 8){
        document.getElementById("chaquetasMujerId").innerHTML = div;
    }else if(show == 9){
        document.getElementById("bikinisMujerId").innerHTML = div;
    }else if(show == 10){
        document.getElementById("complementosMujerId").innerHTML = div;
    }
    for(let item of json){
        if(fila == 0){
            div += "<div class='row'>";
        }
        div += `
        <div class="col">
            <div class="main-camiseta"  onclick="window.location='${item.html}'">
                <img  src="${item.source}" alt="${item.nombre}" />
                
                <div class="row marginsetup">
                    <div class="col-8">
                        <p class='camiseta-text camiseta-title'><a href="${item.html}">${item.nombre}</a> </p>
                    </div>
                    <div class="col-4">
                        <p class="camiseta-price camiseta-text">${item.precio}</p>
                    </div>
                </div>

            </div>
        </div>
        `;
        
        if(fila == max){
            div += "</div>"
            fila = 0;
            continue;
        }
        fila++;
        
    }
    if(show == 1){
        document.getElementById("camisetasHombreId").innerHTML = div;
    }else if(show == 2){
        document.getElementById("pantalonesHombreId").innerHTML = div;
    }else if(show == 3){
        document.getElementById("chaquetasHombreId").innerHTML = div;
    }else if(show == 4){
        document.getElementById("bañadoresHombreId").innerHTML = div;
    }else if(show == 5){
        document.getElementById("complementosHombreId").innerHTML = div;
    }else if(show == 6){
        document.getElementById("camisetasMujerId").innerHTML = div;
    }else if(show == 7){
        document.getElementById("pantalonesMujerId").innerHTML = div;
    }else if(show == 8){
        document.getElementById("chaquetasMujerId").innerHTML = div;
    }else if(show == 9){
        document.getElementById("bikinisMujerId").innerHTML = div;
    }else if(show == 10){
        document.getElementById("complementosMujerId").innerHTML = div;
    }
    
}