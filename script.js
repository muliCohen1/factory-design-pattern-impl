document.getElementById('square-button').addEventListener('click', sendData);
document.getElementById('rectangle-button').addEventListener('click', sendData);

function sendData() {
    var clickedElement = this.id.substr(0, this.id.indexOf('-')); //This forfeits the need for extra functions - just follow the convention of 'shape-button' id and adjust the ternary condition/switch statement accrodingly. muliCohen
    var shape = clickedElement == 'square' ? 'square' : 'rectangle'; //should use a switch statement for multiple values. muliCohen
    $.ajax({
    url: "api.php",
    method: "POST",
    data: {
            shape: shape,
            input_value: document.getElementById(shape + '-input').value
         }
    })
    .done(function (rslt) {   
            alert(rslt);
    }); 
}