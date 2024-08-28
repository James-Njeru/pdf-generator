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
}
