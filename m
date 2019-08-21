Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id C2F85978C6
	for <lists+openipmi-developer@lfdr.de>; Wed, 21 Aug 2019 14:05:03 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i0PML-0003d8-KK; Wed, 21 Aug 2019 12:05:01 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=513627b00d=kamlakantp@marvell.com>)
 id 1i0PMK-0003cq-OY
 for openipmi-developer@lists.sourceforge.net; Wed, 21 Aug 2019 12:05:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5SDr5cgZIxF3PTncW5mpL7o7IED9+kjUGBr1bZvb9uQ=; b=P61ZFikF0NqkQ9OdlRVLWJ+x3B
 qaOPrPCjegVeRQWxeaZAVTIeFrUt4PN/+Zr/EvPZgyBIQfLT4H16SEB+XIKWWMZ0UwC4rp33fjcTO
 73/JQQvkHtuWrWt3BZU5JpRKnT1uAThOTAoKt/W6ARbIA+L2gfsTENoAElYEhsze9zDA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=5SDr5cgZIxF3PTncW5mpL7o7IED9+kjUGBr1bZvb9uQ=; b=l
 U2u/uJ1S7R8FBLuzKj9EDbnB2eA6Wor/Jvj0s3b5MbuZdp6er8b/8crh+c1I+XzMVxyLYOeiHBpmi
 v+/7tmS1OK7TVIXaa5Z2EhVTJW5LQVnOr7kL/YH7KyGBKT34RUGbROhcS3QnYR+f7nTyTr7SnBrq9
 /jTjm0BBmH9sQKCQ=;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1i0PMF-00Azd1-I9
 for openipmi-developer@lists.sourceforge.net; Wed, 21 Aug 2019 12:05:00 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x7LBxi70025988; Wed, 21 Aug 2019 05:04:37 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=5SDr5cgZIxF3PTncW5mpL7o7IED9+kjUGBr1bZvb9uQ=;
 b=h22+Iba9A6abO8w8esayj8ZhJZKrW3Eb2sUUNxs1vTM8x7Q5uC+fDeDGFAen7LC5dXnp
 eTI6WVbuAXMLq6WjUTioPsGk0VSb2/pa/OM6asclBZ+r1962A0/sLMiPsa+/jXthCksU
 voNNn32pVa02v0c3XfG0vTA2UAqopZ5OS4pE0rM0fBpvRdK+fgzqRg0zr7em+1a0BFAq
 TP8+Rw8D3jIVL/cxr2q1ii9dSaQe/UHvgkDJyUpP51ddJWxRzRTB2UY85FgDerMz+Gt3
 mX42aD6slM72GCJTlyIzREdFH8kQ6BPsRVmr3+1e1iJ+pZM6/pofz25BL1P4onMxL4/S 2g== 
Received: from sc-exch01.marvell.com ([199.233.58.181])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ugu7ft2v7-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 21 Aug 2019 05:04:37 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH01.marvell.com
 (10.93.176.81) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 21 Aug
 2019 05:04:35 -0700
Received: from NAM02-SN1-obe.outbound.protection.outlook.com (104.47.36.53) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 21 Aug 2019 05:04:35 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=h5Sv8nU3tFOL4z74PI3qFfp3Go3Crs6QWiaKrPGl4y9QCvrsRlIs6EbwLSyOHxbFwCBLagfLNeZg7dmWbqK227oXOK2wnFz9ZKZMMZTgusqRZYtEX8aZB3vsbMlloUpK1+99cyQw+w4yOYpjBHclwVzCkcqfyQmPVLKuQZUDYpU7PGcjD5PwWMAot1E5i9pUIxu9+TYKEkamaEScSEqako6X3EPH34pbRWzxkm3OyJHiITvJZ5Vn5iAr8ti6pg+g/PzokcAAA1nSKlm+VZ8S+Bdei1a9VqEKHME6s1cETtYT5P6Sa19ShsH4nyc2OdRcb1FsPFpddfOT6UmOiAhu6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5SDr5cgZIxF3PTncW5mpL7o7IED9+kjUGBr1bZvb9uQ=;
 b=gFyyHdjbM/BTdagM4xh9C3TV/vxj9EeQqYbUSwp2UQpq+cjCNjRkFeW9Ud/sLNKpGMZVBgh4DAIOjeVX2aftdtSUb2SfYoTlt5NatNTId4vCgoVgSzFkOs6MmnO/Z/4J6fSxO0ziBjFQRDhSL5yTKT/GonPXEXbzwhQkAcnMMMNOoYXW7CcOjqLQSMQdAx/Vh7m7hieNT4qKn/7I6eoP1njxAIA7wFutJH7I7e2AMpEOlYZo3JPzCu2bN8ckPBtXwuBCpeCV1SMAF3wNaCBB3oNIlSY1EhyIzdFdBOcMT6CsTscPVcCPXNAWfvn+pTmPNKHOZxQPMvMYCroYNlTPnw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5SDr5cgZIxF3PTncW5mpL7o7IED9+kjUGBr1bZvb9uQ=;
 b=Go5b/vslos3dxgukYRzs1mqky5x+pDUYW3w7JaZGCyfSTf/byJUFi5UY9Pvah7x4HtEndr3+UQGl9dtGTs8aL2qnGXWnFmR9mWP+dllBNOklEetOnyaZj0tIWirntNUYGMchBhIhfbB6dUwBzRaZgaB4kKz56xwuTmzlDJXKrRA=
Received: from MN2PR18MB3168.namprd18.prod.outlook.com (10.255.236.89) by
 MN2PR18MB3118.namprd18.prod.outlook.com (10.255.86.87) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Wed, 21 Aug 2019 12:04:33 +0000
Received: from MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::cca7:fdf9:258:52d2]) by MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::cca7:fdf9:258:52d2%5]) with mapi id 15.20.2178.020; Wed, 21 Aug 2019
 12:04:33 +0000
From: Kamlakant Patel <kamlakantp@marvell.com>
To: Corey Minyard <minyard@acm.org>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Thread-Topic: [PATCH v3] ipmi_ssif: avoid registering duplicate ssif interface
Thread-Index: AQHVWBiYwPh7Vx4c0ECCKjvrEDG3Vg==
Date: Wed, 21 Aug 2019 12:04:33 +0000
Message-ID: <1566389064-27356-1-git-send-email-kamlakantp@marvell.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR08CA0066.namprd08.prod.outlook.com
 (2603:10b6:a03:117::43) To MN2PR18MB3168.namprd18.prod.outlook.com
 (2603:10b6:208:162::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 2f721523-0698-48d5-8c3c-08d7262fbace
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600148)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR18MB3118; 
x-ms-traffictypediagnostic: MN2PR18MB3118:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB31183ABE853809DA90A95D34D2AA0@MN2PR18MB3118.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0136C1DDA4
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(39850400004)(346002)(136003)(376002)(396003)(189003)(199004)(6486002)(6436002)(256004)(486006)(4720700003)(81166006)(36756003)(8936002)(8676002)(50226002)(81156014)(2616005)(476003)(2906002)(53936002)(6116002)(2501003)(107886003)(3846002)(14444005)(305945005)(7736002)(25786009)(4326008)(52116002)(99286004)(102836004)(5660300002)(186003)(478600001)(386003)(6506007)(26005)(66066001)(6512007)(86362001)(66476007)(64756008)(66946007)(66556008)(66446008)(110136005)(14454004)(316002)(71190400001)(71200400001)(54906003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB3118;
 H:MN2PR18MB3168.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: plpva04WzyxjadLhP/IeB146aOQ95LmQVb1ZO0CKeTic0QzXhNYq5J7XA1xEU+cffualbP4pfZuTmCj/FYbyrEOXwq4Gg+YCCSRTy85bAqMaI8b4sLBB93K0DIx6BTV2i34Ey6c2wHGKxIMkIE6w6bXTUVDidsFhOoVRlURsfZmE1s+qZJCcPIPKzkNLhrpXIosDoFJfPs4x+D+u77ICEqwJDS+mSZ3A82mOnO253M6nikA/XHCQnk5kNDWWbVcYjCcgtgbtb433tCRXPh9YBrsIeALx5uXksF91Ax+eIHQWrPm2M7bICH24ZZwl7d0FfCauH85WPJ5OQcdvluuMIDlw5vdQTmffz7BJgnLjEuPormOqqT7vB7jXkQtsnDqjEbiT3p9jLnuvIz4qa3BcuVMCXKl9O5V85DkTz+l1J1A=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 2f721523-0698-48d5-8c3c-08d7262fbace
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 Aug 2019 12:04:33.7560 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tVjP2w4wbkD1ndurOhbIHOdLLoAmdZiyiDdMSdbfVZn/ca+gOnMy8jKAoaPqzzpq11pbzsqGZiEOfJGbAdmDXA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB3118
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-21_04:2019-08-19,2019-08-21 signatures=0
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: marvell.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1i0PMF-00Azd1-I9
Subject: [Openipmi-developer] [PATCH v3] ipmi_ssif: avoid registering
 duplicate ssif interface
X-BeenThere: openipmi-developer@lists.sourceforge.net
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: Developer list of OpenIPMI library and Linux driver
 <openipmi-developer.lists.sourceforge.net>
List-Unsubscribe: <https://lists.sourceforge.net/lists/options/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=unsubscribe>
List-Archive: <http://sourceforge.net/mailarchive/forum.php?forum_name=openipmi-developer>
List-Post: <mailto:openipmi-developer@lists.sourceforge.net>
List-Help: <mailto:openipmi-developer-request@lists.sourceforge.net?subject=help>
List-Subscribe: <https://lists.sourceforge.net/lists/listinfo/openipmi-developer>, 
 <mailto:openipmi-developer-request@lists.sourceforge.net?subject=subscribe>
Cc: Kamlakant Patel <kamlakantp@marvell.com>,
 George Cherian <gcherian@marvell.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Ganapatrao Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It is possible that SSIF interface entry is present in both DMI and ACPI
tables. In SMP systems, in such cases it is possible that ssif_probe could
be called simultaneously from i2c interface (from ACPI) and from DMI on
different CPUs at kernel boot. Both try to register same SSIF interface
simultaneously and result in race.

In such cases where ACPI and SMBIOS both IPMI entries are available, we
need to prefer ACPI over SMBIOS so that ACPI functions work properly if
they use IPMI.
So, if we get an ACPI interface and have already registered an SMBIOS
at the same address, we need to remove the SMBIOS one and add the ACPI.

Log:
[   38.774743] ipmi device interface
[   38.805006] ipmi_ssif: IPMI SSIF Interface driver
[   38.861979] ipmi_ssif i2c-IPI0001:06: ssif_probe CPU 99 ***
[   38.863655] ipmi_ssif 0-000e: ssif_probe CPU 14 ***
[   38.863658] ipmi_ssif: Trying SMBIOS-specified SSIF interface at i2c address 0xe, adapter xlp9xx-i2c, slave address 0x0
[   38.869500] ipmi_ssif: Trying ACPI-specified SSIF interface at i2c address 0xe, adapter xlp9xx-i2c, slave address 0x0
[   38.914530] ipmi_ssif: Unable to clear message flags: -22 7 c7
[   38.952429] ipmi_ssif: Unable to clear message flags: -22 7 00
[   38.994734] ipmi_ssif: Error getting global enables: -22 7 00
[   39.015877] ipmi_ssif 0-000e: IPMI message handler: Found new BMC (man_id: 0x00b3d1, prod_id: 0x0001, dev_id: 0x20)
[   39.377645] ipmi_ssif i2c-IPI0001:06: IPMI message handler: Found new BMC (man_id: 0x00b3d1, prod_id: 0x0001, dev_id: 0x20)
[   39.387863] ipmi_ssif 0-000e: IPMI message handler: BMC returned incorrect response, expected netfn 7 cmd 42, got netfn 7 cmd 1
...
[NOTE] : Added custom prints to explain the problem.

In the above log, ssif_probe is executed simultaneously on two different
CPUs.

This patch fixes this issue in following way:
 - Adds ACPI entry also to the 'ssif_infos' list.
 - Checks the list if SMBIOS is already registered, removes it and adds
   ACPI.
 - If ACPI is already registered, it ignores SMBIOS.
 - Adds mutex lock throughout the probe process to avoid race.

Signed-off-by: Kamlakant Patel <kamlakantp@marvell.com>
---
Hi Corey,

I have done a few improvements on the code based on internal review comments.
Could you please pick this patch instead of previous one.

Thanks,
Kamlakant Patel

Changes since v2:
 - Handle mutex_unlock for all error paths.
 - Removed unnecessary goto from ssif_check_and_remove.
 - Removed unnecessary continue from ssif_check_and_remove.
 - Removed unnecessary ssif_client_match function.
 - Removed unnecessary NULL check.
 - Moved ssif_add_infos to ssif_probe to avoid to make it more readable.

Changes since v1:
 - Avoid using separate list for handling ACPI entries.
 - This patch adds ACPI entry also to the ssif_infos list.

 drivers/char/ipmi/ipmi_ssif.c | 78 ++++++++++++++++++++++++++++++++++++++++++-
 1 file changed, 77 insertions(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 305fa505..ee60892 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1428,6 +1428,10 @@ static struct ssif_addr_info *ssif_info_find(unsigned short addr,
 restart:
 	list_for_each_entry(info, &ssif_infos, link) {
 		if (info->binfo.addr == addr) {
+			if (info->addr_src == SI_SMBIOS)
+				info->adapter_name = kstrdup(adapter_name,
+							     GFP_KERNEL);
+
 			if (info->adapter_name || adapter_name) {
 				if (!info->adapter_name != !adapter_name) {
 					/* One is NULL and one is not */
@@ -1603,6 +1607,60 @@ static void test_multipart_messages(struct i2c_client *client,
 #define GLOBAL_ENABLES_MASK (IPMI_BMC_EVT_MSG_BUFF | IPMI_BMC_RCV_MSG_INTR | \
 			     IPMI_BMC_EVT_MSG_INTR)
 
+static void ssif_remove_dup(struct i2c_client *client)
+{
+	struct ssif_info *ssif_info = i2c_get_clientdata(client);
+
+	ipmi_unregister_smi(ssif_info->intf);
+	kfree(ssif_info);
+}
+
+static int ssif_add_infos(struct i2c_client *client)
+{
+	struct ssif_addr_info *info;
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+	info->addr_src = SI_ACPI;
+	info->client = client;
+	info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
+	info->binfo.addr = client->addr;
+	list_add_tail(&info->link, &ssif_infos);
+	return 0;
+}
+
+/*
+ * Prefer ACPI over SMBIOS, if both are available.
+ * So if we get an ACPI interface and have already registered a SMBIOS
+ * interface at the same address, remove the SMBIOS and add the ACPI one.
+ */
+static int ssif_check_and_remove(struct i2c_client *client,
+			      struct ssif_info *ssif_info)
+{
+	struct ssif_addr_info *info;
+
+	list_for_each_entry(info, &ssif_infos, link) {
+		if (!info->client)
+			return 0;
+		if (!strcmp(info->adapter_name, client->adapter->name) &&
+		    info->binfo.addr == client->addr) {
+			if (info->addr_src == SI_ACPI)
+				return -EEXIST;
+
+			if (ssif_info->addr_source == SI_ACPI &&
+			    info->addr_src == SI_SMBIOS) {
+				dev_info(&client->dev,
+					 "Removing %s-specified SSIF interface in favor of ACPI\n",
+					 ipmi_addr_src_to_str(info->addr_src));
+				ssif_remove_dup(info->client);
+				return 0;
+			}
+		}
+	}
+	return 0;
+}
+
 static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 {
 	unsigned char     msg[3];
@@ -1614,13 +1672,17 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	u8		  slave_addr = 0;
 	struct ssif_addr_info *addr_info = NULL;
 
+	mutex_lock(&ssif_infos_mutex);
 	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
-	if (!resp)
+	if (!resp) {
+		mutex_unlock(&ssif_infos_mutex);
 		return -ENOMEM;
+	}
 
 	ssif_info = kzalloc(sizeof(*ssif_info), GFP_KERNEL);
 	if (!ssif_info) {
 		kfree(resp);
+		mutex_unlock(&ssif_infos_mutex);
 		return -ENOMEM;
 	}
 
@@ -1639,6 +1701,19 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		}
 	}
 
+	rv = ssif_check_and_remove(client, ssif_info);
+	/* If rv is 0 and addr source is not SI_ACPI, continue probing */
+	if (!rv && ssif_info->addr_source == SI_ACPI) {
+		rv = ssif_add_infos(client);
+		if (rv) {
+			dev_err(&client->dev, "Out of memory!, exiting ..\n");
+			goto out;
+		}
+	} else if (rv) {
+		dev_err(&client->dev, "Not probing, Interface already present\n");
+		goto out;
+	}
+
 	slave_addr = find_slave_address(client, slave_addr);
 
 	dev_info(&client->dev,
@@ -1851,6 +1926,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		kfree(ssif_info);
 	}
 	kfree(resp);
+	mutex_unlock(&ssif_infos_mutex);
 	return rv;
 
 out_remove_attr:
-- 
1.8.3.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
