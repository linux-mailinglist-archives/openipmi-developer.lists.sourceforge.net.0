Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BED174BA34
	for <lists+openipmi-developer@lfdr.de>; Wed, 19 Jun 2019 15:39:38 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1hdaoK-0008Hb-L1; Wed, 19 Jun 2019 13:39:36 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1hdaoJ-0008HM-Bu
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jun 2019 13:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=xsjJ0XI2c9TL20rAgEVRx6je+eKBuW33uCFRUeRQMck=; b=I3if2MKzrnbP2Mbh8DDU5SgqSz
 VWd1Hmji4U5Tl6ZU+WvwUIf1G7EwtvfN/+GmlIhFZx5lgXON684Loaz6486tU150WzJM3p2uDnJv4
 IaKsuMoI9oRGRw9NPKzw9U5Pv2zQ0U/DJk24cQj6Atgc+ZrGHB4Enu6hHFy+jgnttAh0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xsjJ0XI2c9TL20rAgEVRx6je+eKBuW33uCFRUeRQMck=; b=F8gk64Scp/sidqGIXur1XxmHLu
 zmxX30V8F4O0cgRoTBXQvtexLP/wHPOwlR93+9yTwtKYAbGHh5vGcoY+DwDOE3a6kcaP+OWywuwnV
 0MTY7VNpvGI96aUI0leeFnmkpActjHkxh0CPAY3PoaXROHpfl7UTaZMdqUWhQ/AT93F4=;
Received: from mail-eopbgr30056.outbound.protection.outlook.com ([40.107.3.56]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 id 1hdaoD-005Apo-Cn
 for openipmi-developer@lists.sourceforge.net; Wed, 19 Jun 2019 13:39:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xsjJ0XI2c9TL20rAgEVRx6je+eKBuW33uCFRUeRQMck=;
 b=EOyMivXirduLwsBL9zBkar/78808ci0UkV2QtqH32q6Tvv+jJs7Ll5a38gApzYZfUNUBGq4RIk/2X3wlOsGpvIwI3CUDEextGwIA8mqbGAsWWPQydlQ9D8HsVsxGJ51qoRKCJwS3ZIkG19NjI5fswdWLFCCKdFsD3V79BTW3EvY=
Received: from VI1PR05MB6239.eurprd05.prod.outlook.com (20.178.124.30) by
 VI1PR05MB5407.eurprd05.prod.outlook.com (20.177.63.149) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1987.11; Wed, 19 Jun 2019 13:39:20 +0000
Received: from VI1PR05MB6239.eurprd05.prod.outlook.com
 ([fe80::9db8:5404:48e4:d7f2]) by VI1PR05MB6239.eurprd05.prod.outlook.com
 ([fe80::9db8:5404:48e4:d7f2%7]) with mapi id 15.20.1987.014; Wed, 19 Jun 2019
 13:39:20 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: Arnd Bergmann <arnd@arndb.de>, Corey Minyard <minyard@acm.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>
Thread-Topic: [PATCH] ipmi: ipmb: don't allocate i2c_client on stack
Thread-Index: AQHVJp2fQC/TzrHQG025Fo3gniO4X6ai+YIA
Date: Wed, 19 Jun 2019 13:39:20 +0000
Message-ID: <VI1PR05MB623982A86E259CE5F9E5A771DAE50@VI1PR05MB6239.eurprd05.prod.outlook.com>
References: <20190619125045.918700-1-arnd@arndb.de>
In-Reply-To: <20190619125045.918700-1-arnd@arndb.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ddc7a073-119c-4ffe-4f61-08d6f4bb889a
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:VI1PR05MB5407; 
x-ms-traffictypediagnostic: VI1PR05MB5407:
x-microsoft-antispam-prvs: <VI1PR05MB540744B6E629BE1D426314ECDAE50@VI1PR05MB5407.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 0073BFEF03
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(136003)(346002)(376002)(396003)(366004)(13464003)(189003)(199004)(52536014)(66066001)(76116006)(81156014)(81166006)(55016002)(7696005)(68736007)(102836004)(71200400001)(26005)(71190400001)(7736002)(2906002)(8676002)(6246003)(14454004)(3846002)(6116002)(5660300002)(66946007)(476003)(8936002)(229853002)(73956011)(76176011)(316002)(256004)(14444005)(66446008)(446003)(4326008)(486006)(25786009)(6436002)(99286004)(64756008)(110136005)(11346002)(9686003)(33656002)(305945005)(74316002)(54906003)(186003)(72206003)(53936002)(86362001)(478600001)(66476007)(53546011)(6506007)(80792005)(66556008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR05MB5407;
 H:VI1PR05MB6239.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: fqJjyHUA7dXWBb1bhqNftVk/bHP0hOFk5Rz6yGnektZZuag5gLbZu9kQrT9MmoDsPqRQrRnk3cFw80cjGuN+YkAztOcGJBKPTJk4BHUrhSDeClvbU4VPBxf4BEsPhbm2O26fUm13NADJIMGdY6esmvUg6eqENs1hXL6nFZ9b+TUDQXhZvaT9FLKUv4/7BEzaiRST6lCvqTM5gUTAZFhZxXkgHOeGoCN/iXUSN4vaFAo4cnh8qDJfAKsRw7ihJkAuJ2pebAr2TKXIBFiy60q5E0hhXBQxhjtiUsM55eVA3sDjySd3llOcLcKH5EyIWrBuMX0lX+ZbkQoM/1U1l2efJ0cAgjN7Iepo5oo0dpuwqnKjW82t7kn71e3Mg2L+WI3BcxhEj4ovBjbFRaxs08PJfkTiFkzWQr0dESkDxChWK8c=
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ddc7a073-119c-4ffe-4f61-08d6f4bb889a
X-MS-Exchange-CrossTenant-originalarrivaltime: 19 Jun 2019 13:39:20.5280 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Asmaa@mellanox.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR05MB5407
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: linuxfoundation.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.3.56 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1hdaoD-005Apo-Cn
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmb: don't allocate
 i2c_client on stack
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
Cc: Corey Minyard <cminyard@mvista.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Vadim Pasternak <vadimp@mellanox.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Hi Arnd,

LGTM. 

-----Original Message-----
From: Arnd Bergmann <arnd@arndb.de> 
Sent: Wednesday, June 19, 2019 8:51 AM
To: Corey Minyard <minyard@acm.org>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Arnd Bergmann <arnd@arndb.de>; Asmaa Mnebhi <Asmaa@mellanox.com>; Vadim Pasternak <vadimp@mellanox.com>; Corey Minyard <cminyard@mvista.com>; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
Subject: [PATCH] ipmi: ipmb: don't allocate i2c_client on stack

The i2c_client structure can be fairly large, which leads to a warning about possible kernel stack overflow in some
configurations:

drivers/char/ipmi/ipmb_dev_int.c:115:16: error: stack frame size of 1032 bytes in function 'ipmb_write' [-Werror,-Wframe-larger-than=]

There is no real reason to even declare an i2c_client, as we can simply call i2c_smbus_xfer() directly instead of the i2c_smbus_write_block_data() wrapper.

Convert the ipmb_write() to use an open-coded i2c_smbus_write_block_data() here, without changing the behavior.

It seems that there is another problem with this implementation; when user space passes a length of more than I2C_SMBUS_BLOCK_MAX bytes, all the rest is silently ignored. This should probably be addressed in a separate patch, but I don't know what the intended behavior is here.

Fixes: 51bd6f291583 ("Add support for IPMB driver")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/char/ipmi/ipmb_dev_int.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 2895abf72e61..c9724f6cf32d 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -117,7 +117,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,  {
 	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
 	u8 rq_sa, netf_rq_lun, msg_len;
-	struct i2c_client rq_client;
+	union i2c_smbus_data data;
 	u8 msg[MAX_MSG_LEN];
 	ssize_t ret;
 
@@ -138,17 +138,17 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 
 	/*
 	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
-	 * i2c_smbus_write_block_data_local
+	 * i2c_smbus_xfer
 	 */
 	msg_len = msg[IPMB_MSG_LEN_IDX] - SMBUS_MSG_HEADER_LENGTH;
-
-	strcpy(rq_client.name, "ipmb_requester");
-	rq_client.adapter = ipmb_dev->client->adapter;
-	rq_client.flags = ipmb_dev->client->flags;
-	rq_client.addr = rq_sa;
-
-	ret = i2c_smbus_write_block_data(&rq_client, netf_rq_lun, msg_len,
-					msg + SMBUS_MSG_IDX_OFFSET);
+	if (msg_len > I2C_SMBUS_BLOCK_MAX)
+		msg_len = I2C_SMBUS_BLOCK_MAX;
+
+	data.block[0] = msg_len;
+	memcpy(&data.block[1], msg + SMBUS_MSG_IDX_OFFSET, msg_len);
+	ret = i2c_smbus_xfer(ipmb_dev->client->adapter, rq_sa, ipmb_dev->client->flags,
+			     I2C_SMBUS_WRITE, netf_rq_lun,
+			     I2C_SMBUS_BLOCK_DATA, &data);
 
 	return ret ? : count;
 }
--
2.20.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
