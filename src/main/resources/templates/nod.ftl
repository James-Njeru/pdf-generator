<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>A Simple Responsive HTML Email</title>
    <style type="text/css">
        @page {
            size: A4;
            margin: 1in;
        }
        .page-number:after {
            content: "Page " counter(page) " of " counter(pages);
            position: fixed;
            top: 10px;
            right: 10px;
            font-size: 10px;
        }
        body {
            margin: 0;
            padding: 0;
            min-width: 100% !important;
            font-family: "Times New Roman", Times, serif;
            font-size: 12px;
        }
        .content {
            width: 100%;
        }
        .innerpadding {
            padding: 30px 30px 30px 30px;
        }
    </style>
</head>

<body bgcolor="#f6f8f1">
<div class="page-number"></div>
<div>
    <img src="${qrCode}" class="qr-code" alt="QR Code"/>
</div>
<table width="100%" bgcolor="#f6f8f1" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <!--[if (gte mso 9)|(IE)]>
            <table width="600" align="center" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td>
            <![endif]-->
            <table bgcolor="#ffffff" class="content" align="center" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td class="innerpadding borderbottom">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <table width="100%" align="left" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="100" style="padding-left: 15px">
                                                 <img class="fix"
                                                      src="data:image/png;base64,iVBORw0KGgoAAA" alt=""/>                                                     width="200" height="100" alt=""/>

                                            </td>
                                            <td style="visibility: hidden;">gdggd gggdf ggds gjgsd ggsdh sdjh fffdff
                                            </td>
                                            <td>
                                                <b>Lorem ipsum dolor sit amet<br/>Lorem ipsum dolor sit amet<br/>P.O.
                                                    Box 1111-00000,<br/>Nairobi - KENYA<br/>Telephone: +254 701 234567,<br/>E-mail:
                                                    email@email.co.ke<br/>Website: www.website.co.ke</b>
                                            </td>
                                        </tr>
                                    </table>
                                    <!--[if (gte mso 9)|(IE)]>
                                    <table width="425" align="left" cellpadding="0" cellspacing="0" border="0">
                                        <tr>
                                            <td>
                                    <![endif]-->
                                    <!--[if (gte mso 9)|(IE)]>
                                    </td>
                                    </tr>
                                    </table>
                                    <![endif]-->
                                </td>

                            </tr>
                        </table>
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td><b>AAA/BBB/373456</b></td>
                            </tr>
                            <tr>
                                <td>
                                    <b>${reference!""}</b>
                                </td>
                                <td>
                                    <b>${date!""}</b>
                                </td>
                            </tr>
                        </table>
                        <table style="margin-top: 40px">
                            <tr>
                                <td>
                                    <b>${institution_address!""}</b>
                                </td>
                            </tr>
                        </table>
                        <table style="margin-top: 15px">
                            <tr>
                                <td>
                                    ${contact_person_name!""}
                                </td>
                            </tr>
                        </table>
                        <table style="margin-top: 15px">
                            <tr>
                                <td>
                                    <p>Dear Sir/Madam</p>
                                </td>
                            </tr>
                        </table>
                        <table style="margin-top: 10px">
                            <tr>
                                <td>
                                    <b><u>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</u></b>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <b>Customer's Name:${customer_name!""}</b> <br/>
                                    <b>Identity No:${identity_no!""}</b> <br/>
                                    ${disputed_item_info!""}<br/>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat in et metus. Maecenas tortor ante, placerat quis efficitur sit amet, faucibus non nulla. Curabitur et convallis ligula, at rhoncus velit. Integer egestas purus commodo est sagittis aliquet. ${dispute_nature!""}</p>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat in et metus. Maecenas tortor ante, placerat quis efficitur sit amet, faucibus non nulla. Curabitur et convallis ligula, at rhoncus velit. Integer egestas purus commodo est sagittis aliquet.</p>
                                    <ol type="1">
                                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat
                                        </li>
                                        <li>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat</li>
                                    </ol>
                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat in et metus. Maecenas tortor ante, placerat quis efficitur sit amet, faucibus non nulla. Curabitur et convallis ligula, at rhoncus velit.</p>

                                    Yours faithfully,<br/>
                                    For and on behalf of <br/>
                                    <b>Lorem ipsum dolor sit amet</b>

                                </td>
                            </tr>
                        </table>
                    </td>
                </tr>
            </table>
            <!--[if (gte mso 9)|(IE)]>
            </td>
            </tr>
            </table>
            <![endif]-->
        </td>
    </tr>
</table>

<footer>
    <table width="100%" bgcolor="#ffffff" align="center" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td style="padding-left: 15px">
                ${customer_service_head!""} <br/>
                <b><u>Head of Customer Experience</u> </b>
            </td>
            <td align="right" style="padding-right: 15px">
                ${dispute_admin!""} <br/>
                <b><u>Disputes Admin Officer</u> </b>
            </td>
        </tr>
    </table>
    <table width="100%" bgcolor="#ffffff" align="center" border="0" cellspacing="0" cellpadding="0">
        <tr>
            <td style="padding-left: 15px; padding-top: 30px">
                <p><b>Lorem ipsum: </b>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat in et metus. Maecenas tortor ante, placerat quis efficitur sit amet, faucibus non nulla.</p>
            </td>
        </tr>
    </table>
</footer>
</body>
</html>