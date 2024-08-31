package com.example.pdfgen;

import com.lowagie.text.DocumentException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RestController
public class PdfController {

    @Autowired
    private PdfService pdfService;

    @GetMapping("/generate-pdf")
    public ResponseEntity<Resource> generatePdf() throws IOException, DocumentException {
        Map<String, Object> data = new HashMap<>();
        data.put("reference", "Ref No");
        data.put("date", "25/08/2024");
        data.put("institution_address", "Equity Bank");
        data.put("contact_person_name", "James Njeru");
        data.put("customer_name", "John Doe");
        data.put("identity_no", "32789012");
        data.put("disputed_item_info", "Item 32789012");
        data.put("customer_service_head", "Customer Service Head");
        data.put("dispute_admin", "Dispute Admin");

        Resource pdf = pdfService.generatePdf(data);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"report.pdf\"")
                .header(HttpHeaders.CONTENT_TYPE, "application/pdf")
                .body(pdf);
    }

    @GetMapping("/generate-dispute")
    public ResponseEntity<?> generateDispute() throws IOException, DocumentException {
        Map<String, Object> model = new HashMap<>();
        model.put("institution_name", "Equity Bank");
        model.put("institution_address", "Nairobi, Kenya");
        model.put("contact_person_name", "James Njeru");
        model.put("date", "31-08-2024");

        model.put("customer_name", "Customer’s Name: John Doe");
        model.put("identity_no", "National ID"+": "+"32567890");
        model.put("first_paragraph", "Following your submission of the above customer's information for listing, be advised that the customer notified Metropol CRB Ltd that the client disputes the information contained in their credit report on grounds that: ");

        String secondParagraph = "Within twenty-one (21) days, please conduct in-depth investigation then confirm to us the accuracy of the disputed information, which you submitted to Metropol CRB Ltd for listing and also provide us with the following:<br/><ol>"
                + "<li>A copy of prelisting notice issued to the customer prior to the adverse listing in accordance with the Banking (CRB) Regulations, 2020, 63 (1) (a)</li>"
                + "<li>A copy of written consent from the customer allowing you to furnish the Bureau with the customer's credit information in accordance with the Banking (CRB) regulations, 2020, 22(1)</li>"
                + "</ol>";
        model.put("second_paragraph", secondParagraph);

        model.put("customer_address", "Bungoma, Kenya");
        model.put("telephone_no", "0712345678");
        model.put("dispute_action", "Disputed Name");
        model.put("customer_service_head", "Customer Service Head");
        model.put("dispute_admin", "Dispute Admin");

        model.put("dispute_nature", "Bio Data");
        model.put("disputed_item_info", "disputed Item Info");

        Resource pdf = pdfService.generatePdf(model);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"dispute.pdf\"")
                .header(HttpHeaders.CONTENT_TYPE, "application/pdf")
                .body(pdf);
    }

    @GetMapping("/generate-invoice")
    public ResponseEntity<?> generateInvoice() throws IOException, DocumentException {
        Map<String, Object> model = new HashMap<>();

        Resource pdf = pdfService.generatePdf(model);

        return ResponseEntity.ok()
                .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename=\"dispute.pdf\"")
                .header(HttpHeaders.CONTENT_TYPE, "application/pdf")
                .body(pdf);
    }
}
