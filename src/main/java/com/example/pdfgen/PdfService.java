package com.example.pdfgen;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.client.j2se.MatrixToImageWriter;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
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
import org.xhtmlrenderer.pdf.PDFCreationListener;

import javax.imageio.ImageIO;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Base64;
import java.util.Map;

@Service
public class PdfService {

    @Autowired
    private FreeMarkerConfigurer freeMarkerConfigurer;

    public Resource generatePdf(Map<String, Object> data) throws IOException, DocumentException {
        // Generate QR code image
        String url = "https://itax.kra.go.ke/KRA-Portal/"; // URL from your data map
        QRCodeWriter qrCodeWriter = new QRCodeWriter();
        BitMatrix bitMatrix;
        try {
            bitMatrix = qrCodeWriter.encode(url, BarcodeFormat.QR_CODE, 200, 200);
        } catch (WriterException e) {
            throw new RuntimeException("Error generating QR code", e);
        }

        // Convert BitMatrix to BufferedImage
        BufferedImage qrCodeImage = MatrixToImageWriter.toBufferedImage(bitMatrix);

        // Convert BufferedImage to Base64
        ByteArrayOutputStream qrCodeStream = new ByteArrayOutputStream();
        ImageIO.write(qrCodeImage, "PNG", qrCodeStream);
        byte[] qrCodeBytes = qrCodeStream.toByteArray();
        String qrCodeBase64 = Base64.getEncoder().encodeToString(qrCodeBytes);

        // Add the QR code base64 to the data map
        data.put("qrCode", "data:image/png;base64," + qrCodeBase64);




        // Process Freemarker template
        String html = null;
        try {
            html = FreeMarkerTemplateUtils.processTemplateIntoString(
                    freeMarkerConfigurer.getConfiguration().getTemplate("nod.ftl"), data);
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
