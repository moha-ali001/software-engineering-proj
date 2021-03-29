% include("header.tpl")
% include("banner.tpl")

<style>
.collapsible {
  //background-color: white;
  color: black;
  cursor: pointer;
  padding: 20px;
  width: 100%;
  //border: none;
  text-align: left;
  //outline: none;
  font-size: 15px;
}

.active, .collapsible:hover {
  background-color: black;
  color: white;
  cursor: pointer;
}

.content {
  padding: 0 18px;
  padding-bottom: 30px;
  display: none;
  overflow: hidden;
  //background-color: #B22222;
  background-color: white;
  color = white;
}

div.resources {
    text-indent: 50px;
}

a:hover{
    color: blue;
    cursor: pointer;
}

</style>


<div class="resources">
<h2>Resource Catagories:</h2>
</div">

<button type="button" class="collapsible">Shoulder</button>
<div class="content">
  <p><a href="google.com"> This is a link </a></p>
</div>
<button type="button" class="collapsible">Chest</button>
<div class="content">
  <p> </p>
</div>
<button type="button" class="collapsible">Back</button>
<div class="content">
  <p> </p>
</div>
<button type="button" class="collapsible">Arms</button>
<div class="content">
  <p> </p>
</div>
<button type="button" class="collapsible">Abdominal</button>
<div class="content">
  <p> </p>
</div>
<button type="button" class="collapsible">Legs</button>
<div class="content">
  <p> </p>
</div>
<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.display === "block") {
      content.style.display = "none";
    } else {
      content.style.display = "block";
    }
  });
}
</script>



% include("footer.tpl")
