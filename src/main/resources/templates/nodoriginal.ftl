<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>A Simple Responsive HTML Email</title>
    <style type="text/css">
        @page {
            size: A4;
            margin: 50px;
            margin-bottom: 120px;
            @bottom-center {
                content: element(footer);
                margin-bottom: 15px;
            }
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

        #footer {
            position: running(footer);
            width: 100%;
            text-align: center;
            font-size: 10px;
        }
    </style>
</head>

<body bgcolor="#f6f8f1">
<table width="100%" bgcolor="#f6f8f1" border="0" cellpadding="0" cellspacing="0">
    <tr>
        <td>
            <!--[if (gte mso 9)|(IE)]>
            <table width="100%" align="center" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td>
            <![endif]-->
            <table bgcolor="#ffffff" class="content" align="center" cellpadding="0" cellspacing="0" border="0">
                <tr>
                    <td class="borderbottom">
                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                            <tr>
                                <td>
                                    <table width="100%" border="0" cellpadding="0" cellspacing="0">
                                        <tr>
                                            <td height="100">
                                                <img class="fix"
                                                     src="data:image/png;base64,iVBORw0KGgoAAA" alt=""/>
                                            </td>
                                            <td align="right">
                                                <div style="text-align: left; display: inline-block;">
                                                <b>Lorem ipsum dolor sit amet<br/>Lorem ipsum dolor sit amet,<br/>P.O. Box 1111-0000,<br/>Nairobi, Kenya<br/>Telephone:
                                                    +254 700 000000,<br/>E-mail: mail@mail.co.ke<br/>Website:
                                                    www.mail.co.ke</b>
                                                </div>
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
                        <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-top: 20px">
                            <tr>
                                <td><b>QQWE23456</b></td>
                            </tr>
                            <tr>
                                <td>
                                    <b>Our Ref: ${reference!""}</b>
                                </td>
                                <td align="right">
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
                                    <b><u>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo</u></b>
                                </td>
                            </tr>
                        </table>
                        <table>
                            <tr>
                                <td>
                                    <b>${customer_name!""}</b> <br/>
                                    <b>${identity_no!""}</b> <br/>
                                    ${disputed_item_info!""}<br/>

                                    <p>${first_paragraph!""}</p>

                                    <ol type="1">
                                        <li>${dispute_nature!""}</li>
                                    </ol>

                                    <p>${second_paragraph!""}</p>

                                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat in et metus. Maecenas tortor ante, placerat quis efficitur sit amet, faucibus non nulla. Curabitur et convallis ligula, at rhoncus velit.</p>

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

<table width="100%" bgcolor="#ffffff" align="center" border="0" cellspacing="0" cellpadding="0">
    <tr>
        <td style="padding-top: 15px">
            <img class="fix"
                 src="data:image/png;base64,iVBORw0KGgoAAA" alt=""/>  <br/>
            ${dispute_admin!""} <br/>
            <b><u>Lorem ipsum dolor sit amet</u> </b>
        </td>

        <td align="right">
            <div style="text-align: left; display: inline-block;">
                <img class="fix"
                     src="data:image/png;base64,iVBORw0KGgoAAA" alt=""/>  <br/>
            ${customer_service_head!""} <br/>
            <b><u>Lorem ipsum dolor sit amet</u> </b>
            </div>
        </td>
    </tr>
</table>

<footer id="footer">
    <hr style="border: 1px solid blue; margin-top: 20px;"/>
    <div style="color: blue;">
        <table width="100%" bgcolor="#ffffff" align="center" border="0" cellspacing="0" cellpadding="0">
            <tr>
                <td style="padding-top: 10px">
                    <p><b>footer: </b>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam nec nunc sed justo tempus volutpat in et metus. </p>
                </td>
            </tr>
        </table>
    </div>
</footer>
</body>
</html>