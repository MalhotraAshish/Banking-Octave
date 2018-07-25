var generatePDF = function() {
	kendo.drawing.drawDOM($("#formConfirmation")).then(function(group) {
		kendo.drawing.pdf.saveAs(group, "Converted PDF.pdf");
	});
}
