Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 18110876E4
	for <lists+openipmi-developer@lfdr.de>; Fri,  9 Aug 2019 12:06:01 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hw1mY-0001kr-9V; Fri, 09 Aug 2019 10:05:58 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=5124369345=kamlakantp@marvell.com>)
 id 1hw1mX-0001ki-CY
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Aug 2019 10:05:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=tkgsP9mcCeJVWQGryyUyCapRmtd08YJ+Q+N6LMJ1QgE=; b=CZ2ke3n8OTcNP7jQORG50xVvwB
 W0YlOpPYUIUh9ejaYpEY3i82b2FmdcvksPcMLilMhufdmN6XNwyIZmfVwpF+T0IJAQreEKNOiF3M0
 b32wrO/t/B2E2yniVPdp3F6svEdvlHO4dn/BZj9IoCy957S7XLuCVLclWirfHFflDblM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=tkgsP9mcCeJVWQGryyUyCapRmtd08YJ+Q+N6LMJ1QgE=; b=R
 9VXl2rvmzsUMcJ4w+qYI1IrlVmoln0ZpLvrv1sSmVf9jxFqQXfPn/MRD1YRf0+pszsVgpI+z27NiF
 UtTWtLdbV5ftgs+o4Mkl3qRUJ3Je6T43pw0UpJOOoojaTBO/k00527rTLTbc4mLHwnZXWUL6xirqh
 5XPproDFSpm2fWm8=;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hw1mU-00FpjJ-DD
 for openipmi-developer@lists.sourceforge.net; Fri, 09 Aug 2019 10:05:57 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x79A5Pcj009690; Fri, 9 Aug 2019 03:05:25 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=tkgsP9mcCeJVWQGryyUyCapRmtd08YJ+Q+N6LMJ1QgE=;
 b=yrgCOxGh/XQHFCnooXkqW/0ZL1mlP5aIH/PKGyWG6IX2HHgaGJ13aBLfim0THsKVrjM3
 wMKQxKUl5AFn1Dvm6waTUBlQVo+yto5nBjWGoOxbdW5v2y9xvjLxSI4UoI1/azo6Obvy
 hLMO63OMORgKGLHEf/QLr+vTqYDCszQ0C2UgskFZY32vrgO6uAlMXT0VuZ15NUCCPg8y
 dx1Ut3bwehV33hE6JncYHYkOcHXjtv0cqpfDt8/eS0r4L+W927quSADjXEl+v4Wlh5VO
 aB2DwuYXKUSpwL5Dt0xu1VL3GaYE8WawFFiHirzqg6THABEu2ryqEJLiKvQi+KK8Iesr oQ== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2u59sm7ghy-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Fri, 09 Aug 2019 03:05:25 -0700
Received: from SC-EXCH01.marvell.com (10.93.176.81) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Fri, 9 Aug
 2019 03:05:23 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (104.47.46.50) by
 SC-EXCH01.marvell.com (10.93.176.81) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Fri, 9 Aug 2019 03:05:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=WiNht/wZRrvkuzTWEZtYjxq+tcevocH1iDQ8oOJITtekLPNlgK4Jo+9bXWvUFRMYna8Q8lQY0HvuelZvqq+a0Dh3ZQ6qkUfEPqhW0vH1iyz3z6xBUTAp9+eVWbg69JFG63vLNa8ftx12RNiXr7FsCFxQiU5WbESaj4UxmwQHfw7XnAqvWJ7IW98OVC1r3rdtr9D6/xIF+XokoeJY8cThcU6v2jufg7pFRd/Iv1Kpve+KQqogcfPBnxasHlyq9HiWQrmBsAlXtptibJONBec4Hb9Tyo5rYkyYqv2uCN2xhbXaIZ1iia3m16jnkKFKzq3Va6xemHh4YVN3Duk9+BgEog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tkgsP9mcCeJVWQGryyUyCapRmtd08YJ+Q+N6LMJ1QgE=;
 b=VfaDkWOKYZ0xfTeMVReSFIMOexMsrB6mAmJa2T8+/HPd1E5J0uklRDg7yHGkgBFNH2nE86WrPv61HLn9TJplZzTuPAFasnHqJ6LUWT97zze8CDLrvcSkYgsOM4zMt4o8zUp1zFj7HBd6OXfqb0qGEYWy+81OVA07fYL3Aw93+9CAAqMnn1+y1RRJD7Jnhwf9u3hHoWc5DUCJ71o0dVj+NR8rJdZJj7IwEMziOtAvskb/GgXMkeBSMPhM5wtW0VMrAhsVb3LaVwhjLsNh/hzBmi39UfRYOBdovlVhCALHKM9rxDDxgVbaM8FYD7K0YSxoszs+bybhHIMYDJ3ptdViFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=marvell.com; dmarc=pass action=none header.from=marvell.com;
 dkim=pass header.d=marvell.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=tkgsP9mcCeJVWQGryyUyCapRmtd08YJ+Q+N6LMJ1QgE=;
 b=kmyr8+FS0/6izg7x3rvL4Ttb+063hA05xJJanxl2ve9a/XMS+72hFiYXHXTL8GAwPuby6m1DxrW5PdmnyWKDSkj8ZtIipBVyVLMayQFwd2LdXjAAGXq811yT3XVwWx+xCAmc6KVV/8Sl/ogx7E0bMr0g4fr/swawB7UfXQ10ikk=
Received: from MN2PR18MB3168.namprd18.prod.outlook.com (10.255.236.89) by
 MN2PR18MB2896.namprd18.prod.outlook.com (20.179.22.75) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2157.14; Fri, 9 Aug 2019 10:05:18 +0000
Received: from MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::cca7:fdf9:258:52d2]) by MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::cca7:fdf9:258:52d2%5]) with mapi id 15.20.2157.020; Fri, 9 Aug 2019
 10:05:18 +0000
From: Kamlakant Patel <kamlakantp@marvell.com>
To: Corey Minyard <minyard@acm.org>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Thread-Topic: [PATCH v2] ipmi_ssif: avoid registering duplicate ssif interface
Thread-Index: AQHVTpnyF9EVoko3WkqlEdDhEv0r7A==
Date: Fri, 9 Aug 2019 10:05:18 +0000
Message-ID: <1565345092-32685-1-git-send-email-kamlakantp@marvell.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR07CA0026.namprd07.prod.outlook.com
 (2603:10b6:a02:bc::39) To MN2PR18MB3168.namprd18.prod.outlook.com
 (2603:10b6:208:162::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 665d9284-dae5-440f-77c8-08d71cb11502
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2896; 
x-ms-traffictypediagnostic: MN2PR18MB2896:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR18MB2896998B320AB2EDB943E576D2D60@MN2PR18MB2896.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01244308DF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(136003)(396003)(39840400004)(366004)(346002)(189003)(199004)(14444005)(6512007)(66946007)(66556008)(66446008)(64756008)(6506007)(186003)(26005)(102836004)(386003)(50226002)(8936002)(5660300002)(14454004)(66476007)(316002)(110136005)(54906003)(478600001)(256004)(3846002)(99286004)(2906002)(66066001)(6116002)(81166006)(71200400001)(2501003)(71190400001)(6436002)(81156014)(6486002)(52116002)(86362001)(53936002)(4720700003)(8676002)(7736002)(4326008)(25786009)(305945005)(36756003)(476003)(2616005)(486006)(107886003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2896;
 H:MN2PR18MB3168.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: U8tJmwECtqpTAMEwb+SsWvWTcsjvsmKkRBZhgL329uxg7gwSsbZCTifQ6Oszf6J/xrM9g90w3hG1Djw/J6eScycbZojEolF3lPVAUWqYEgJ7j1uXOfOBTI01QYjiZszdhzyib/PvW6iu9rNXnNdqem+usNXdXAyfmG2DpDwoppckgkjegX3k2vOax/kcEuoC3I41FZ99JQsdXskOI33IFd6TjBD+M78SdHatWlcjcYdY4SoieGkW6EzZjm5Yj5a9zexloZnmCS4JavbvhbbyOHwBOnQgXKg8NPmEuOmqmLNO5W8BR9TV/vnQ8XmWP82wi3nYb2tz7BmORp6tVBBi2a2X2zpNtuUBnmOaJSfn6DPQ5NvT6yeaqlmRv8hdbMqG3A+hrht8RYjvGGah3lixcXIP/vlPUHox4loroYly0yc=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 665d9284-dae5-440f-77c8-08d71cb11502
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Aug 2019 10:05:18.6075 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qFe2w+0CSCviQ2eGvIKpf7g97D9IU862ePgE/hhcSEyqjFUOslOfFluAI4nP20+EnriihoZ/056MSlRm4ndvWw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2896
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-08-09_02:2019-08-07,2019-08-09 signatures=0
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
X-Headers-End: 1hw1mU-00FpjJ-DD
Subject: [Openipmi-developer] [PATCH v2] ipmi_ssif: avoid registering
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
Changes since v1:
 - Avoid using separate list for handling ACPI entries.
 - This patch adds ACPI entry also to the ssif_infos list.
 
 drivers/char/ipmi/ipmi_ssif.c | 78 +++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 78 insertions(+)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 305fa505..6ca3ebe 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -1603,6 +1603,76 @@ static void test_multipart_messages(struct i2c_client *client,
 #define GLOBAL_ENABLES_MASK (IPMI_BMC_EVT_MSG_BUFF | IPMI_BMC_RCV_MSG_INTR | \
 			     IPMI_BMC_EVT_MSG_INTR)
 
+static void ssif_remove_dup(struct i2c_client *client)
+{
+	struct ssif_info *ssif_info = i2c_get_clientdata(client);
+
+	if (!ssif_info)
+		return;
+	ipmi_unregister_smi(ssif_info->intf);
+	kfree(ssif_info);
+}
+
+static int ssif_client_match(struct ssif_addr_info *info,
+			      struct i2c_client *client)
+{
+	if (!info->client)
+		return false;
+
+	if (!strcmp(info->adapter_name, client->adapter->name) &&
+		   (info->binfo.addr == client->addr))
+		return true;
+
+	return false;
+}
+
+static int ssif_update_infos(struct ssif_addr_info *info,
+			     struct i2c_client *client)
+{
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
+		if (ssif_client_match(info, client)) {
+			if (info->addr_src == SI_SMBIOS &&
+			    ssif_info->addr_source == SI_SMBIOS)
+				return 0;
+			if (info->addr_src == SI_ACPI)
+				return -EEXIST;
+
+			if (ssif_info->addr_source == SI_ACPI &&
+			    info->addr_src == SI_SMBIOS) {
+				dev_info(&client->dev,
+					 "Removing %s-specified SSIF interface in favor of ACPI\n",
+					 ipmi_addr_src_to_str(info->addr_src));
+				ssif_remove_dup(info->client);
+				goto update_list;
+			}
+		} else
+			continue;
+	}
+ update_list:
+	return ssif_update_infos(info, client);
+}
+
 static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 {
 	unsigned char     msg[3];
@@ -1614,6 +1684,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	u8		  slave_addr = 0;
 	struct ssif_addr_info *addr_info = NULL;
 
+	mutex_lock(&ssif_infos_mutex);
 	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
 	if (!resp)
 		return -ENOMEM;
@@ -1639,6 +1710,12 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		}
 	}
 
+	if (ssif_check_and_remove(client, ssif_info)) {
+		kfree(resp);
+		kfree(ssif_info);
+		mutex_unlock(&ssif_infos_mutex);
+		return 0;
+	}
 	slave_addr = find_slave_address(client, slave_addr);
 
 	dev_info(&client->dev,
@@ -1851,6 +1928,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
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
