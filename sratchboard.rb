<script type="text/javascript">
(function() {
    var $$ = function(selector) {
        return Array.prototype.slice.call(document.querySelectorAll(selector));
    }
    document.addEventListener("DOMContentLoaded", function() {
        var checkbox;
           
        $$(".switch").forEach(function(switchControl) {
            switchControl.addEventListener("click", function toggleSwitch() {
                checkbox = switchControl.lastElementChild;
                checkbox.checked = !checkbox.checked;
	           if (switchControl.classList.contains("on")) {
	               switchControl.lastElementChild.checked = true;
	           }
                switchControl.classList.toggle("on");
            }, false);
        });
    }, false);
})();

window.onload = function() {
	function check() {
	    document.getElementById("switchy").checked = true;
	}
	
	$('#c_cell1_s').toggleClass( "on" );
};


</script>