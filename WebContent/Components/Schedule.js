$(document).ready(function()
{
 $("#alertSuccess").hide();
 $("#alertError").hide();
 
});

// SAVE ============================================
$(document).on("click", "#btnSave", function(event)
{
// Clear alerts---------------------
 $("#alertSuccess").text("");
 $("#alertSuccess").hide();
 $("#alertError").text("");
 $("#alertError").hide();
 
// Form validation-------------------
var status = validateScheduleForm();
if (status != true)
 {
 $("#alertError").text(status);
 $("#alertError").show();
 return;
 }

// If valid------------------------

var type = ($("#hidScheduleIDSave").val() == "") ? "POST" : "PUT";

$.ajax(
{
 url : "ScheduleAPI",
 type : type,
 data : $("#formSchedule").serialize(),
 dataType : "text",
 complete : function(response, status)
 {
 onScheduleSaveComplete(response.responseText, status);
 }
});


});



function onScheduleSaveComplete(response, status)
{
	if (status == "success")
	 {
	 var resultSet = JSON.parse(response);
	 
	 if (resultSet.status.trim() == "success")
	 {
		 $("#alertSuccess").text("Successfully saved.");
		 $("#alertSuccess").show();
		 
		 $("#divScheduleGrid").html(resultSet.data);
	 } else if (resultSet.status.trim() == "error")
	 {
		 $("#alertError").text(resultSet.data);
		 $("#alertError").show();
	 }
	 } else if (status == "error")
	 {
		 $("#alertError").text("Error while saving.");
		 $("#alertError").show();
	 } else
	 {
		 $("#alertError").text("Unknown error while saving..");
		 $("#alertError").show();
	 }
		$("#hidScheduleIDSave").val("");
		$("#formSchedule")[0].reset(); 

}
//UPDATE==========================================
$(document).on("click", "#btnUpdate", function(event)
{
 $("#hidScheduleIDSave").val($(this).closest("tr").find('#hidScheduleUpdate').val());
 $("#scheduleDate").val($(this).closest("tr").find('td:eq(1)').text());
 $("#scheduleTime").val($(this).closest("tr").find('td:eq(2)').text());
 $("#scheduleType").val($(this).closest("tr").find('td:eq(3)').text());
 $("#scheduleDoc").val($(this).closest("tr").find('td:eq(4)').text());
 $("#scheduleHos").val($(this).closest("tr").find('td:eq(5)').text());
});
//remove
$(document).on("click", "#btnRemove", function(event)
		{
		 $.ajax(
		 {
		 url : "ScheduleAPI",
		 type : "DELETE",
		 data : "scheduleID=" + $(this).data("scheduleID"),
		 dataType : "text",
		 complete : function(response, status)
		 {
		 onScheduleDeleteComplete(response.responseText, status);
		 }
		 });
		});


		function onScheduleDeleteComplete(response, status)
		{
		if (status == "success")
		 {
		 var resultSet = JSON.parse(response);
		 if (resultSet.status.trim() == "success")
		 {
		 $("#alertSuccess").text("Successfully deleted.");
		 $("#alertSuccess").show();
		 $("#divScheduleGrid").html(resultSet.data);
		 } else if (resultSet.status.trim() == "error")
		 {
		 $("#alertError").text(resultSet.data);
		 $("#alertError").show();
		 }
		 } else if (status == "error")
		 {
		 $("#alertError").text("Error while deleting.");
		 $("#alertError").show();
		 } else
		 {
		 $("#alertError").text("Unknown error while deleting..");
		 $("#alertError").show();
		 }
		}
		//CLIENTMODEL=========================================================================
		function validateScheduleForm()
		{
		// scheduleDate
		if ($("#scheduleDate").val().trim() == "")
		 {
		 return "Insert scheduleDate.";
		 }
		// scheduleTime
		if ($("#scheduleTime").val().trim() == "")
		 {
		 return "Insert scheduleTime.";
		 } 
		9
		// scheduleType-------------------------------
		if ($("#scheduleType").val().trim() == "")
		 {
		 return "Insert scheduleType.";
		 }

		// scheduleDoc------------------------
		if ($("#scheduleDoc").val().trim() == "")
		 {
		 return "Insert scheduleDoc.";
		 }

		//scheduleHos------------------------
		if ($("#scheduleHos").val().trim() == "")
		 {
		 return "Insert scheduleHos.";
		 }
		return true;


}
