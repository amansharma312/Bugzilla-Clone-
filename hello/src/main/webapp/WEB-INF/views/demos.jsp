<!DOCTYPE html>
<html>
<body>
<h1>HTML DOM Events</h1>
<h2>The onclick Event</h2>

<p>The onclick event triggers a function when an element is clicked on.</p>
<p>Click to trigger a function that will output "Hello World":</p>

<button onclick="myFunction()">Click me</button>

 <div class="form-group">
                <label class="dis" for="">Product name</label>
                <input placeholder="Product Field" type="text" name="demo" id="demo" class="form-control" required>
</div>

<script>

function myFunction() {
  document.getElementById("demo").innerHTML = "Hello World";
}

</script>

</body>
</html>