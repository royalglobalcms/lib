<script type="text/javascript">
$(document).ready(function() {
  $("#tableDrag").tableDnD({
    onDragClass: "myDragClass",
    dragHandle: ".dragHandle",
    onDrop: function(table, row) {
      $.ajax({
        url: 'module/account/drag.php',
        method:"POST",
        data:{a:1},
        success:function(data){
          toastr.options = {"toastClass": "custom-toast-success", "tapToDismiss": false, "closeButton": true, "progressBar": true, "preventDuplicates": true}; toastr.success('تم تحديث البيانات بنجاح');
        }

      })
    }

    });
});
</script>