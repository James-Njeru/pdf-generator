<!DOCTYPE html>
<html>
<head>
    <style>
        body {
            margin: 0;
            padding: 0;
            min-width: 100% !important;
            font-family: "Times New Roman", Times, serif;
            font-size: 12px;
        }
        .header {
            text-align: center;
            font-size: 24px;
            color: blue;
            margin-bottom: 20px;
            font-weight: bold;
        }
        p{
            padding: 0;
            margin: 5px;
        }
        .content-box {
            border: 1px solid black;
            border-radius: 15px;
            padding: 10px;
            margin-bottom: 20px;
        }
        .content-box-small {
            border: 1px solid black;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 20px;
        }
        .no-radius-content-box {
            border: 1px solid black;
            padding: 10px;
            margin-bottom: 20px;
        }
        .table-half-content{
            width: 50%;
        }
        .table-one-third-content{
            width: 33.33%;
        }
        .table-one-fifth-content{
            width: 20%;
        }
        .footer {
            border-top: 2px solid blue;
            padding-top: 10px;
            color: blue;
            font-size: 12px;
        }
    </style>
</head>
<body>

    <div class="header">
        Tax Invoice
    </div>

    <div>
        <table style="width: 100%;">
            <tr>
                <td class="content-box table-half-content">
                    <img class="fix" src="data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAA" style="width: 100%; height: auto; display: block;" alt="" />
                </td>
                <td style="visibility: hidden">space</td>
                <td class="content-box table-half-content">
                    <div>
                        <p><b>Lorem ipsum dolor sit amet </b></p>
                        <p>P.O. Box 1111-0000 </p>
                        <p>Kenya </p>
                        <p>Lorem ipsum dolor sit amet </p>
                        <p>Lorem ipsum dolor sit amet </p>
                        <p><a href="mailto:finance.email@email.co.ke">finance.email@email.co.ke</a></p>
                        <p><a href="http://www.website.co.ke">http://www.website.co.ke</a></p>
                    </div>
                </td>
            </tr>
            <tr style="visibility: hidden"><td></td></tr>
            <tr>
                <td class="content-box table-half-content" style="font-weight: bold">
                    <p>To:</p>
                    <p>455</p>
                    <p>455 Lorem ipsum dolor sit amet</p>
                    <p style="margin-top: 20px">Lorem ipsum dolor:</p>
                </td>
                <td style="visibility: hidden">space</td>
                <td class="content-box table-half-content">
                    <p>Telephone <b>+254 70000000</b></p>
                    <p>E-mail mail@mail.co.ke</p>
                    <p><b>VAT: QWWE22345   PIN: ASD23442</b></p>
                </td>
            </tr>
        </table>
    </div>

    <div style="margin-top: 15px">
        <table style="width: 100%">
            <thead>
            <tr>
                <th class="table-one-fifth-content">Account</th>
                <th class="table-one-fifth-content">Date</th>
                <th class="table-one-fifth-content">Order No</th>
                <th class="table-one-fifth-content">Delivery Note</th>
                <th class="table-one-fifth-content">Our Reference</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td class="content-box-small table-one-fifth-content">455</td>
                <td class="content-box-small table-one-fifth-content">29/11/2023</td>
                <td class="content-box-small table-one-fifth-content"></td>
                <td class="content-box-small table-one-fifth-content"></td>
                <td class="content-box-small table-one-fifth-content">AD1234555</td>
            </tr>
            </tbody>
        </table>
    </div>

    <div style="margin-top: 15px">
        <table style="width: 100%;">
            <tr>
                <td class="no-radius-content-box" style="text-decoration: underline;"><b>Customer Category:</b></td>
                <td style="visibility: hidden">spa</td>
                <td class="no-radius-content-box" style="width: 70%"><b>MFB</b></td>
            </tr>
        </table>
    </div>

    <div style="margin-top: 15px">
        <table style="width: 100%; border-collapse: collapse;">
            <thead>
                <tr>
                    <th style="text-decoration: underline;">Item Description</th>
                    <th style="text-decoration: underline;">Quantity</th>
                    <th style="text-decoration: underline;">Price (Ex)</th>
                    <th style="text-decoration: underline;">Line Total</th>
                </tr>
            </thead>
            <tbody>
            <tr style="height: 5px"></tr>
                <tr>
                    <td style="border: 1px solid #9BB4D0; padding: 8px 4px;">Credit Report Prepayments</td>
                    <td style="border: 1px solid #9BB4D0; padding: 8px 4px;">1.00</td>
                    <td style="border: 1px solid #9BB4D0; padding: 8px 4px;">50000.00</td>
                    <td style="border: 1px solid #9BB4D0; padding: 8px 4px;">50,000.00</td>
                </tr>
            </tbody>
        </table>
    </div>

    <div style="margin-top: 15px">
        <table style="width: 100%">
            <tr>
                <td class="table-one-third-content">
                    <div>
                        <table>
                            <tr>
                                <td>Received by</td>
                                <td>.............................</td>
                            </tr>
                            <tr style="height: 5px"></tr>
                            <tr>
                                <td>Date</td>
                                <td>.............................</td>
                            </tr>
                            <tr style="height: 5px"></tr>
                            <tr>
                                <td>Signed</td>
                                <td>.............................</td>
                            </tr>
                        </table>
                    </div>
                </td>
                <td class="table-one-third-content">
                    <div class="qr-code">
                        <img src="qr-code.png" alt="QR Code" />
                    </div>
                </td>
                <td class="table-one-third-content">
                    <div class="content-box">
                        <table>
                            <tr>
                                <td>Total (Excl)</td>
                                <td style="padding-left: 10px">Kes</td>
                                <td style="padding-left: 10px">50,000.00</td>
                            </tr>
                            <tr>
                                <td>Tax (16%)</td>
                                <td style="padding-left: 10px">Kes</td>
                                <td style="padding-left: 10px">8,000.00</td>
                            </tr>
                            <tr style="height: 10px"></tr>
                            <tr>
                                <td style="border-top: 2px solid black;" colspan="3"></td>
                            </tr>
                            <tr style="font-size: 16px">
                                <td><b>Total (Incl)</b></td>
                                <td style="padding-left: 10px"><b>Kes</b></td>
                                <td style="padding-left: 10px"><b>58,000.00</b></td>
                            </tr>
                        </table>
                    </div>
                </td>
            </tr>
        </table>
    </div>

    <div style="margin-top: 15px; text-align: center">
        <p style="font-family: 'Courier New', Monospace,serif;">CU Serial Number: KRAMW019202207043829 CU Invoice Number: 0190438290000002572 58000 50000 8000
            2023-11-29 16:23:03</p>
    </div>

    <div>
        <hr style="border: 1px solid black;"/>
    </div>

    <footer class="footer">
        <table style="width: 100%;">
            <tr>
                <td class="content-box table-half-content">
                    <b>BENEFICIARY'S BANK NAME:</b> Kenya Commercial Bank Limited <br/>
                    <b>BANK BRANCH:</b> University Way Branch <br/>
                        <b>Swift CODE:</b> KCBNJKL <br/>
                    <b>BENEFICIARY'S NAME:</b> Lorem ipsum dolor sit amet <br/>
                    <b>BANK ACCOUNT NO:</b> 11122224444
                </td>
                <td style="visibility: hidden">sp</td>
                <td class="content-box table-half-content">
                    <b>PAYMENT TERMS:</b> Lorem ipsum dolor sit amet <br/><br/>
                    <p style="text-align: center; font-size: 16px;"><strong>THANK YOU FOR YOUR BUSINESS!</strong></p>
                </td>
            </tr>
        </table>
    </footer>

</body>
</html>
