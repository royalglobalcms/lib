<script type="text/javascript">
$(document).ready(function() {
  $("#tableDrag").tableDnD({
    onDragClass: "myDragClass",
    dragHandle: ".dragHandle",
    onDrop: function(table, row) {
      var id_of_row_visible_arr = new Array();
      var currentPage = '<?php echo $page; ?>'; // The number of the pagination
      var numResultsOnPage = '<?php echo $num_results_on_page; ?>'; // The number of result on page
      var numRowVisible = document.getElementById("tableDrag").rows.length; //Total number of the the row visible include the header
      var totalRecord = '<?php echo  $total_records;?>';
      //push the id of each visible row into array.
      for(var i = 1; i < numRowVisible; i++ ) {
        id_of_row_visible_arr.push(document.getElementById("tableDrag").rows[i].cells[0].getAttribute('id'));
        }
      $.ajax({
        url: 'module/account/drag.php', 
        method:"POST",
        data:{id_of_row_visible_arr:id_of_row_visible_arr,currentPage:currentPage,numResultsOnPage:numResultsOnPage,numRowVisible:numRowVisible,totalRecord:totalRecord},
        success:function(data){
            var counter = (currentPage * <?php echo $num_results_on_page; ?>) - <?php echo $num_results_on_page; ?> + 1;
            for(var j = 1; j < numRowVisible; j++) { 
              table.rows[j].cells[1].innerHTML = counter + ".";
              counter ++;
            }
            toastr.options = {"toastClass": "custom-toast-success", "tapToDismiss": false, "closeButton": true, "progressBar": true, "preventDuplicates": true}; toastr.success('تم تحديث البيانات بنجاح');}
      })
    }
    });
});
</script>
