Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 877AA6BFEB
	for <lists+openipmi-developer@lfdr.de>; Wed, 17 Jul 2019 18:54:58 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hnnCi-0006fT-IE; Wed, 17 Jul 2019 16:54:56 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <prvs=4101c4a961=kamlakantp@marvell.com>)
 id 1hnnCg-0006fJ-TJ
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Jul 2019 16:54:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Juxhsv/IL8nVbtzJ+Pz+cCMyTESQShp7vOFzAk0lMas=; b=l8THcWA8RTIRoyy3NTXIVRvaU8
 RBbbwrS91aX56NI3HjLm+Un3VA6k4cHjT/li3t/r5cjRLgEbLU8i3QePqYJGSXib7qFZUN69/M6B+
 G1/NqxUJ8EqMDTJM8Gx/jvCA9da3pVT809CVC0HrMip3PI2xL39j+k/YBuBxU7S5gcv8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:Message-ID:Date:
 Subject:CC:To:From:Sender:Reply-To:Content-ID:Content-Description:Resent-Date
 :Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
 References:List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:
 List-Owner:List-Archive; bh=Juxhsv/IL8nVbtzJ+Pz+cCMyTESQShp7vOFzAk0lMas=; b=G
 aRueQOP2K+OfKP1fNAPV3TFzpF646QbACOwntc0+njbPKZu3wlikEMRY/oz2hRBl7RfIgXa8JCeeF
 26BVs8E8apO4pkjuXOlGHSZCxFaV2bri8oEmkXmWz0tkyr95ezM9R57ah9Z7hho2SvAcYpwzx1NqL
 RJj/Geww6sc8+I04=;
Received: from mx0b-0016f401.pphosted.com ([67.231.156.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hnnCY-005MfE-HH
 for openipmi-developer@lists.sourceforge.net; Wed, 17 Jul 2019 16:54:54 +0000
Received: from pps.filterd (m0045851.ppops.net [127.0.0.1])
 by mx0b-0016f401.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x6HG4ko3025705; Wed, 17 Jul 2019 09:09:03 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=marvell.com;
 h=from : to : cc :
 subject : date : message-id : content-type : content-transfer-encoding :
 mime-version; s=pfpt0818; bh=Juxhsv/IL8nVbtzJ+Pz+cCMyTESQShp7vOFzAk0lMas=;
 b=Vo4v2afpjw3KlmTsvxgO76k6COBw6KBQl0NOJ2LtPcepplzzboLiA8k7ndPqRk7ODaxX
 O7XozVm+B5CY/Z6D4+WlyglSbr3Cw26/Se8DqKFKIWaQSkhz6RRe1XvBugskZjEcIUHn
 IBvIq36Z3Mry3G9kX6OZWG5IY0/tiFwWKklLrpd/1RvvBU3wLWBXkdS6f2g3q+7V9f3r
 aszvqwMDSiFUBXFyq1bmuwX3uCcmkUW7uyA4wg6cEQR4Yjnay3kI5QFmVEC0NrspNEPh
 Ma6jsQDx4FuW6T1RgcSSB8Pk+uxauVSizyTNbJ7KgVCMkZfSGyzOu2KMAtT7yp5e809I 8w== 
Received: from sc-exch04.marvell.com ([199.233.58.184])
 by mx0b-0016f401.pphosted.com with ESMTP id 2ts0a28afm-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-SHA384 bits=256 verify=NOT);
 Wed, 17 Jul 2019 09:09:03 -0700
Received: from SC-EXCH03.marvell.com (10.93.176.83) by SC-EXCH04.marvell.com
 (10.93.176.84) with Microsoft SMTP Server (TLS) id 15.0.1367.3; Wed, 17 Jul
 2019 09:09:01 -0700
Received: from NAM03-CO1-obe.outbound.protection.outlook.com (104.47.40.59) by
 SC-EXCH03.marvell.com (10.93.176.83) with Microsoft SMTP Server
 (TLS) id
 15.0.1367.3 via Frontend Transport; Wed, 17 Jul 2019 09:09:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=boLPMh0xiKCxuimNeC3zIb1S09s4nqGI3oaBoGAGLAn8Qw6Ho4fzXmkrj8TV8EnM3MLCGD9FA/FkcwXUM54PG5c3/qMZcF/LKbxp6m0dhteIYWIG2PNqaH62VPWZqZnIbAS4Cpd+5PVgKzWSCYBGGINE4CDQWlOWq7u7HvyG841YARCTFFtsKkzGj/Uj1/fyf7ToAlqWrF7KTbM5NwUdh3so5x0DWohI5Hz+LC1YbZDDtFtrZmUCYszTAIezSGIJZxj1YSVnLNDAmlAIHdQbqMw4FtkLHOkL0u6gOD8XwDa+wl9rFdbCZXRYu0S+k+lxDwOqsmTcuB7Xelu81dGYOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Juxhsv/IL8nVbtzJ+Pz+cCMyTESQShp7vOFzAk0lMas=;
 b=bZuuVdkag9k7acr/AiS2fsaEpSMX/goOAQpsaicZhI8WMFtptencM9eVKmo6QGKXAthbKCvIRxQiY9jZtIzjQS88quD7YtbKBlxI87QOQTf648E5fERKnBmyKtCQlGcYqtSMrq6ZJkQAd1uT8Q6ExI5+ls1gVlqiqqSpjqwlq/hha1NRo8ERyJelfnG66qU34qILjbnk4PUqC3k2PSalkGBZb6lhv51M5n+/x5jSgK2sSIAcj+KdzLkUR+CGh9Qzmlht8mhC/OD6ORg0bZivdKX3ozYCbiknN3jVE2/zqWYBlMmN/kDX2LV6O/xKHbEGmO5y7L5dPg6D9w7FaWBAEA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1;spf=pass
 smtp.mailfrom=marvell.com;dmarc=pass action=none
 header.from=marvell.com;dkim=pass header.d=marvell.com;arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=marvell.onmicrosoft.com; s=selector2-marvell-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Juxhsv/IL8nVbtzJ+Pz+cCMyTESQShp7vOFzAk0lMas=;
 b=FGcJVQDnNQqGlQMQYenX0biRpM+QPZbUnHutlTpvjiz2kmummmgzsKz6AS4/Nd2mBkEqVgeZWj/pw9G3SbMXqvtkzYMGtlTVTsXXhW6ny3jcxn/FciiSYr7aN8ESJBpxDHXBWnMdF+48g+slaai8juwKsMmb9ALzD6XVZL2RbTE=
Received: from MN2PR18MB3168.namprd18.prod.outlook.com (10.255.236.89) by
 MN2PR18MB2880.namprd18.prod.outlook.com (20.179.22.78) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2073.14; Wed, 17 Jul 2019 16:08:59 +0000
Received: from MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::dce7:4d37:fb7e:327c]) by MN2PR18MB3168.namprd18.prod.outlook.com
 ([fe80::dce7:4d37:fb7e:327c%7]) with mapi id 15.20.2073.012; Wed, 17 Jul 2019
 16:08:59 +0000
From: Kamlakant Patel <kamlakantp@marvell.com>
To: "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH RFC] ipmi_ssif: avoid registering duplicate ssif interface
Thread-Index: AQHVPLnxuM+NJqd4I0+fmISEGOzsBA==
Date: Wed, 17 Jul 2019 16:08:59 +0000
Message-ID: <1563379709-19758-1-git-send-email-kamlakantp@marvell.com>
Accept-Language: en-IN, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: BYAPR11CA0097.namprd11.prod.outlook.com
 (2603:10b6:a03:f4::38) To MN2PR18MB3168.namprd18.prod.outlook.com
 (2603:10b6:208:162::25)
x-ms-exchange-messagesentrepresentingtype: 1
x-mailer: git-send-email 1.8.3.1
x-originating-ip: [199.233.59.128]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: dc68f300-423f-453c-f7f7-08d70ad1139a
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MN2PR18MB2880; 
x-ms-traffictypediagnostic: MN2PR18MB2880:
x-microsoft-antispam-prvs: <MN2PR18MB28809728D7F98C37079F4298D2C90@MN2PR18MB2880.namprd18.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 01018CB5B3
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39860400002)(396003)(376002)(366004)(199004)(189003)(66476007)(316002)(102836004)(53936002)(386003)(107886003)(66556008)(6506007)(66446008)(64756008)(2351001)(478600001)(2616005)(4326008)(476003)(6916009)(2906002)(6486002)(3846002)(54906003)(26005)(99286004)(6116002)(86362001)(25786009)(6436002)(66946007)(186003)(50226002)(52116002)(5640700003)(5660300002)(68736007)(256004)(14444005)(66066001)(36756003)(2501003)(7736002)(6512007)(4720700003)(486006)(305945005)(81156014)(1730700003)(8676002)(71200400001)(14454004)(8936002)(71190400001)(81166006);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR18MB2880;
 H:MN2PR18MB3168.namprd18.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: marvell.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: MDWjw7SmD9u0zjHRM1xqqjsUHkDUkl+WJf6+BuLDG7U/LrSSx0xz1iII5RQWMbP05xQxoO8yczyxis5JbC2LihHsKGx6hi5IvlIfoYK9dSkuhcu3wqtXnIpVoMvsYmsL8SyiYLWF35h4KoogQLCc3yDCS/DUeRgF5GudT2e4UGVJW3NsK5hAKvEB0tUBg4KzX7yY20tn2/0RD9bhZEKk2j2Ky3YQYJyPW5tzc1H538iIInVxwQke7ocVPsD7fs37CASIkZtzZdHBW0d/mtpxB9ft9OQmq6IcCfw1t13KX2wsZdLOA+5pFZn0qBbDwodFGDolqJassOxB8STtEywe/64Raz8N7jFSMPieWRIoJug0Ky1yeKGTmNkp8YQYcolt2eBJbrlcdC9UgruEhkBt2idvi9xkeOK+2j8N78FLrsI=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: dc68f300-423f-453c-f7f7-08d70ad1139a
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Jul 2019 16:08:59.1799 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 70e1fb47-1155-421d-87fc-2e58f638b6e0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kamlakantp@marvell.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR18MB2880
X-OriginatorOrg: marvell.com
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:5.22.84,1.0.8
 definitions=2019-07-17_07:2019-07-17,2019-07-17 signatures=0
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
X-Headers-End: 1hnnCY-005MfE-HH
Subject: [Openipmi-developer] [PATCH RFC] ipmi_ssif: avoid registering
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
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 George Cherian <gcherian@marvell.com>, Ganapatrao
 Kulkarni <gkulkarni@marvell.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

It is possible that SSIF interface entry is present in both DMI and ACPI tables.
In SMP systems, in such cases it is possible that ssif_probe could be called
simultaneously from i2c interface (from ACPI) and from DMI on different CPUs at
kernel boot. Both try to register same SSIF interface simultaneously and result
in race.

In such cases where ACPI and SMBIOS both IPMI entries are available, we need
to prefer ACPI over SMBIOS so that ACPI functions work properly if they use IPMI.
So, if we get an ACPI interface and have already registered an SMBIOS at the same
address, we need to remove the SMBIOS one and add the ACPI one.

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

In the above log ssif_probe is executed simultaneously on two different CPUs.

This patch fixes this issue in following way:
1. Adds ACPI entry also to the 'ssif_infos' list.
2. Checks the list if SMBIOS is already registered, removes it and adds ACPI.
3. If ACPI is already registered, it ignores SMBIOS.
4. Adds mutex lock throughout the probe process to avoid race.

Signed-off-by: Kamlakant Patel <kamlakantp@marvell.com>
---
 drivers/char/ipmi/ipmi_ssif.c | 89 +++++++++++++++++++++++++++++++++--
 1 file changed, 84 insertions(+), 5 deletions(-)

diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
index 8b5aec5430f1..763279b5e17c 100644
--- a/drivers/char/ipmi/ipmi_ssif.c
+++ b/drivers/char/ipmi/ipmi_ssif.c
@@ -185,6 +185,7 @@ struct ssif_addr_info {
 	char *adapter_name;
 	int debug;
 	int slave_addr;
+	bool is_probed;
 	enum ipmi_addr_src addr_src;
 	union ipmi_smi_info_union addr_info;
 	struct device *dev;
@@ -1312,6 +1313,7 @@ static int ssif_remove(struct i2c_client *client)
 
 	list_for_each_entry(addr_info, &ssif_infos, link) {
 		if (addr_info->client == client) {
+			addr_info->is_probed = 0;
 			addr_info->client = NULL;
 			break;
 		}
@@ -1414,7 +1416,8 @@ static int strcmp_nospace(char *s1, char *s2)
 	return 0;
 }
 
-static struct ssif_addr_info *ssif_info_find(unsigned short addr,
+static struct ssif_addr_info *ssif_info_find(struct i2c_client *client,
+					     unsigned short addr,
 					     char *adapter_name,
 					     bool match_null_name)
 {
@@ -1423,6 +1426,13 @@ static struct ssif_addr_info *ssif_info_find(unsigned short addr,
 restart:
 	list_for_each_entry(info, &ssif_infos, link) {
 		if (info->binfo.addr == addr) {
+			if (!info->client && info->addr_src == SI_SMBIOS &&
+			    client) {
+				info->client = client;
+				info->adapter_name = kstrdup(client->adapter->name,
+								GFP_KERNEL);
+			}
+
 			if (info->adapter_name || adapter_name) {
 				if (!info->adapter_name != !adapter_name) {
 					/* One is NULL and one is not */
@@ -1592,12 +1602,73 @@ static void test_multipart_messages(struct i2c_client *client,
 	return;
 }
 
+static void ssif_remove_dup(struct i2c_client *client)
+{
+	struct ssif_info *ssif_info = i2c_get_clientdata(client);
+
+	if (!ssif_info)
+		return;
+	ipmi_unregister_smi(ssif_info->intf);
+	kfree(ssif_info);
+}
 /*
  * Global enables we care about.
  */
 #define GLOBAL_ENABLES_MASK (IPMI_BMC_EVT_MSG_BUFF | IPMI_BMC_RCV_MSG_INTR | \
 			     IPMI_BMC_EVT_MSG_INTR)
 
+static int ssif_check_present(struct ssif_addr_info *info,
+			      struct i2c_client *client)
+{
+	if (!strcmp(info->adapter_name, client->adapter->name) &&
+		   (info->binfo.addr == client->addr))
+		return true;
+
+	return false;
+}
+
+/*
+ * Prefer ACPI over SMBIOS, if both are available.
+ * So if we get an ACPI interface and have already registered a SMBIOS
+ * interface at the same address, remove the SMBIOS and add the ACPI one.
+ */
+static int ssif_is_registered(struct i2c_client *client,
+			      struct ssif_info *ssif_info)
+{
+	struct ssif_addr_info *info;
+
+	list_for_each_entry(info, &ssif_infos, link) {
+		if (info->is_probed) {
+			if (ssif_check_present(info, client)) {
+				if (info->addr_src == SI_ACPI) {
+					return -EEXIST;
+				} else if (ssif_info->addr_source == SI_ACPI &&
+					   info->addr_src == SI_SMBIOS) {
+					dev_info(&client->dev,
+						 "Removing %s-specified SSIF interface in favor of ACPI\n",
+						 ipmi_addr_src_to_str(info->addr_src));
+					ssif_remove_dup(info->client);
+				}
+			}
+		} else if (ssif_info->addr_source == SI_SMBIOS) {
+			info->is_probed = true;
+			return 0;
+		}
+	}
+
+	info = kzalloc(sizeof(*info), GFP_KERNEL);
+	if (!info)
+		return -ENOMEM;
+	info->addr_src = ssif_info->addr_source;
+	info->is_probed = true;
+	info->client = client;
+	info->adapter_name = kstrdup(client->adapter->name, GFP_KERNEL);
+	info->binfo.addr = client->addr;
+	list_add_tail(&info->link, &ssif_infos);
+
+	return 0;
+}
+
 static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 {
 	unsigned char     msg[3];
@@ -1609,6 +1680,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	u8		  slave_addr = 0;
 	struct ssif_addr_info *addr_info = NULL;
 
+	mutex_lock(&ssif_infos_mutex);
 	resp = kmalloc(IPMI_MAX_MSG_LENGTH, GFP_KERNEL);
 	if (!resp)
 		return -ENOMEM;
@@ -1620,8 +1692,8 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 	}
 
 	if (!check_acpi(ssif_info, &client->dev)) {
-		addr_info = ssif_info_find(client->addr, client->adapter->name,
-					   true);
+		addr_info = ssif_info_find(client, client->addr,
+					   client->adapter->name, true);
 		if (!addr_info) {
 			/* Must have come in through sysfs. */
 			ssif_info->addr_source = SI_HOTMOD;
@@ -1633,7 +1705,13 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 			slave_addr = addr_info->slave_addr;
 		}
 	}
-
+	/* Check if SSIF is already registered */
+	if (ssif_is_registered(client, ssif_info)) {
+		kfree(resp);
+		kfree(ssif_info);
+		mutex_unlock(&ssif_infos_mutex);
+		return 0;
+	}
 	slave_addr = find_slave_address(client, slave_addr);
 
 	dev_info(&client->dev,
@@ -1846,6 +1924,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
 		kfree(ssif_info);
 	}
 	kfree(resp);
+	mutex_unlock(&ssif_infos_mutex);
 	return rv;
 
 out_remove_attr:
@@ -1878,7 +1957,7 @@ static int new_ssif_client(int addr, char *adapter_name,
 	int rv = 0;
 
 	mutex_lock(&ssif_infos_mutex);
-	if (ssif_info_find(addr, adapter_name, false)) {
+	if (ssif_info_find(NULL, addr, adapter_name, false)) {
 		rv = -EEXIST;
 		goto out_unlock;
 	}
-- 
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
