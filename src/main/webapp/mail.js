function sendMail()
{
  var url = "http://localhost:2080/mail/send/"+T0.value+"/"+T1.value+"/"+T2.value+"/"+T3.value;
  callApi("GET", url, "", getResponse);
}

function getResponse(res)
{
  alert(res);
}

function callApi(METHOD, URL, DATA, SUCCESS)
{
  var xhttp = new XMLHttpRequest();
  xhttp.open(METHOD, URL, true);
  xhttp.setRequestHeader('Content-Type','application/json');
    
  xhttp.onreadystatechange = function()
  {
    if(this.readyState == 4)
    {
      if(this.status == 200)
        SUCCESS(this.responseText);
      else
        alert("404: Service unavailable");
    }
  };
  
  xhttp.send(DATA);
}