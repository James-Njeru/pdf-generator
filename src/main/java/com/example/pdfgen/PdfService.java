package com.example.pdfgen;

import com.lowagie.text.Document;
import com.lowagie.text.DocumentException;
import com.lowagie.text.pdf.PdfWriter;
import freemarker.template.TemplateException;
import org.xhtmlrenderer.pdf.ITextRenderer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;
import org.springframework.ui.freemarker.FreeMarkerTemplateUtils;
import org.springframework.web.servlet.view.freemarker.FreeMarkerConfigurer;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Map;

@Service
public class PdfService {

    @Autowired
    private FreeMarkerConfigurer freeMarkerConfigurer;

    public Resource generatePdf(Map<String, Object> data) throws IOException, DocumentException {
        // Process Freemarker template
        String html = null;
        try {
            html = FreeMarkerTemplateUtils.processTemplateIntoString(
                    freeMarkerConfigurer.getConfiguration().getTemplate("nodoriginal.ftl"), data);
        } catch (TemplateException e) {
            throw new RuntimeException(e);
        }

        // Convert HTML to PDF
        try (ByteArrayOutputStream outputStream = new ByteArrayOutputStream()) {
            ITextRenderer renderer = new ITextRenderer();
            renderer.setDocumentFromString(html);
            renderer.layout();
            renderer.createPDF(outputStream);
            return new ByteArrayResource(outputStream.toByteArray());
        }
    }
}
