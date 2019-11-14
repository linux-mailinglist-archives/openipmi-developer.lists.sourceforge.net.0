Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42409FD07A
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Nov 2019 22:41:29 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iVMrn-0008Lz-TR; Thu, 14 Nov 2019 21:41:27 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iVMrl-0008LU-L6
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 21:41:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=idBou0NQYqnbOt8IiUTkumd1QnXiz0mpzPaY136S9o0=; b=OAIDowabS17c+ic9AGyH/sRtbJ
 CzYzh/Yb3/wDaTXhgc+Pj2ZOoot297P3VFOgJE975ZWsggBuT/tEAxAhwbqQEPpOt4ftnvlXSCeY2
 1RA30aZRk6f/4UGmJgtwKFfDdMryFcHTW7MbAuOdu1jgpjmOWnR3mjDrTXyOQCG68sTw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=idBou0NQYqnbOt8IiUTkumd1QnXiz0mpzPaY136S9o0=; b=Dv3+6VH/Ch0ood2rmdTRtMc81e
 rbGCL27Q5BRTJ6FMm5rykBcGYSsmYXXdlJUnQbODX59hdNketieqNhxKVBmkaCAVZXaemQJgP99g2
 E/JZFS9CKN5lO5vd0Su0/mCJx3ml1S4bT6uz4pWRVeRGGFAJeZKCdONHnpzJ7b5/80O4=;
Received: from mail-eopbgr130079.outbound.protection.outlook.com
 ([40.107.13.79] helo=EUR01-HE1-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVMrg-00H425-AY
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 21:41:25 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gZU2HtoYUUMGrUb4rEW8qn4XLc9GYg7SW+fk+02YFrC1GDswWQ/+ai3rQTJkLBjw9R4ZbHYo2VKxqd0QvUVRvK6YaivsXqhJWSb8zR6naEvQMvLJbrVtXMfOz8CgEKERFOnyBXSP7IJFdsYgYnfI8dxhTNWlJST9cwShYe6blLFT2IwN3zLXzaUZOn86r9HRX6u8BgLVb4Cbcfx49iDRHGA/yy5kcwfmkUxA8ecDT1WbLtYZrZ1gmPm5wv2MO8w5Utgi1qnWdGsVguE1RbLuJA7fWNbP3KRPTw6/8TEfAo6jWGN+zl9xX6zWxZUR6d0aJq9BJ5qFx299yrJoMY0GTg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idBou0NQYqnbOt8IiUTkumd1QnXiz0mpzPaY136S9o0=;
 b=BkUMP20yKWSiUhWReX0wbqK/uELvBRZ7vwFd23J6Vt5u3O24KVH+oINAVPY25Vq/sfBXTt6bL0fuMxEudUNnIBMLk72Ti8FIvoY0CfAT/8fQUS+ZP3uFPnKkmf0If7sYyCv3OndQ84qRW6BZq9vO5wOEj0vcq0/+jecq5vLaY4U6mRKPZDEkr5L8eoFVZXkRkYbRfluCJsdLeNjHAN3pMN9yzmzwx9MK7hw5wyCQz+LaTlGuJ6+BgeAQmDJuuoEqqET+aSTcnt/ahhrd28ICybQx2P7oIpcyXa/q1fs/DEcpmBM8TpN29Jgzt6MCspOESG9MrmHCyrae1PnT1TFDXQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=idBou0NQYqnbOt8IiUTkumd1QnXiz0mpzPaY136S9o0=;
 b=W5qewFQ6klJIDuoaUJpulpB+g9CLCXcG7cSyQhAbo7f4ozQzy1mduvUSe0PmnpbKYwkVgj2gCQ+/sDxRO4zVd3sHX6xbsxZxEdvXDk2b/7/vsY/CDOZNklPWQ+dSYUsBGerAMJk+RYwr21Mj4JWbIPTM4B2B2tjmo8M9k93GzWs=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2581.eurprd05.prod.outlook.com (10.168.73.135) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.24; Thu, 14 Nov 2019 21:41:11 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2451.027; Thu, 14 Nov
 2019 21:41:10 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: Vijay Khemka <vijaykhemka@fb.com>, Jonathan Corbet <corbet@lwn.net>, Corey
 Minyard <minyard@acm.org>, Arnd Bergmann <arnd@arndb.de>,
 Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, "linux-doc@vger.kernel.org"
 <linux-doc@vger.kernel.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Thread-Topic: [PATCH v5] drivers: ipmi: Support raw i2c packet in IPMB
Thread-Index: AQHVmx5eMhFHRaYab0mtud1fguHZb6eLJujA
Date: Thu, 14 Nov 2019 21:41:10 +0000
Message-ID: <DB6PR0501MB2712B06FB162520F90EF1F4DDA710@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191114185359.2832107-1-vijaykhemka@fb.com>
In-Reply-To: <20191114185359.2832107-1-vijaykhemka@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 50307b50-ed2f-4a39-525e-08d7694b5d9c
x-ms-traffictypediagnostic: DB6PR0501MB2581:
x-microsoft-antispam-prvs: <DB6PR0501MB25814F7D48D81ECDC85A5240DA710@DB6PR0501MB2581.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3173;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(346002)(39860400002)(366004)(136003)(189003)(199004)(13464003)(2201001)(14454004)(8676002)(33656002)(66446008)(52536014)(66476007)(5660300002)(66556008)(99286004)(66946007)(54906003)(110136005)(316002)(76116006)(64756008)(486006)(11346002)(446003)(476003)(305945005)(7736002)(74316002)(7416002)(186003)(25786009)(71200400001)(71190400001)(7696005)(53546011)(2501003)(6506007)(14444005)(81156014)(81166006)(26005)(76176011)(256004)(80792005)(102836004)(6246003)(4326008)(9686003)(66066001)(6116002)(3846002)(229853002)(86362001)(478600001)(2906002)(55016002)(8936002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2581;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: yQoRtNVXkN50OIkYxR6ArBgUFJT+mdicWdHDPvLD6PezCW12L/pDriKIG4NvEd9cp1QKS94Vl23fyrOMa/qqJZC4nHyw7wplkjyU0U8a1hmtEKahnXVKfr0fSpiRfLV9FRUQ+jRuO6MNzaNXIP0waq9SLVISvkytDe63sxoqRUpRGCR/hAiq0wGa0xUshi32kkyfIrW/HN5IjO0MNHARtwq5pnnyRID9lPOT34kpe9hQlshnLWclxaId/09uKBqPtYtIIpB3wdk6WgGrCq07eTon6YWazRrBUalhcmDzhwRrDEvbkWSxlQc1lvTFmSdHNaNruHn4hhyKoPUW5ClQneDogazQJ7LAdAeNo7Q8mE4nqroS0bTDUJPT1JjyqfeANHaTYTUkWg2wAM46SouaH7pQjI4gJx1LixrWL4rliSGlA0bbBpyK0Zh58UE5DBAd
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 50307b50-ed2f-4a39-525e-08d7694b5d9c
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 21:41:10.7635 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 58jL0LM8sXrbpPJ57jXUn6fTh2nPz21toFIbeDwnUPffH14nWRMwXmDED2x0aB+zOt2PgMMO8E07aqoIiBt+kA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2581
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.13.79 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iVMrg-00H425-AY
Subject: Re: [Openipmi-developer] [PATCH v5] drivers: ipmi: Support raw i2c
 packet in IPMB
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
Cc: "cminyard@mvista.com" <cminyard@mvista.com>,
 "sdasari@fb.com" <sdasari@fb.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net


-----Original Message-----
From: Vijay Khemka <vijaykhemka@fb.com> 
Sent: Thursday, November 14, 2019 1:54 PM
To: Jonathan Corbet <corbet@lwn.net>; Corey Minyard <minyard@acm.org>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; linux-doc@vger.kernel.org; linux-kernel@vger.kernel.org; openipmi-developer@lists.sourceforge.net
Cc: vijaykhemka@fb.com; cminyard@mvista.com; Asmaa Mnebhi <Asmaa@mellanox.com>; joel@jms.id.au; linux-aspeed@lists.ozlabs.org; sdasari@fb.com
Subject: [PATCH v5] drivers: ipmi: Support raw i2c packet in IPMB

Many IPMB devices doesn't support smbus protocol and current driver support only smbus devices. Added support for raw i2c packets.

User can define i2c-protocol in device tree to use i2c raw transfer.

Asmaa >> It would be good if you can rephrase the above description as follows:
"The ipmb_dev_int driver only supports the smbus protocol at the moment. Add support for the i2c protocol as well. There will be a variable passed by the device tree or ACPI table which determines whether the protocol is i2c or smbus."

Or at least fix the following: 
"Many IPMB devices doesn't" -> "Many IPMB devices don't"
"current driver support" -> "current driver supports"

Besides my above comment:
Reviewed-by: Asmaa Mnebhi <asmaa@mellanox.com>

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 Documentation/IPMB.txt           |  4 ++++
 drivers/char/ipmi/ipmb_dev_int.c | 29 +++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/Documentation/IPMB.txt b/Documentation/IPMB.txt index a6ed8b68bd0f..7a023beff976 100644
--- a/Documentation/IPMB.txt
+++ b/Documentation/IPMB.txt
@@ -71,9 +71,13 @@ b) Example for device tree:
          ipmb@10 {
                  compatible = "ipmb-dev";
                  reg = <0x10>;
+                 i2c-protocol;
          };
 };
 
+If xmit of data to be done using raw i2c block vs smbus then 
+"i2c-protocol" needs to be defined as above.
+
 2) Manually from Linux:
 modprobe ipmb-dev-int
 
diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index ae3bfba27526..68a254c0dd92 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -63,6 +63,7 @@ struct ipmb_dev {
 	spinlock_t lock;
 	wait_queue_head_t wait_queue;
 	struct mutex file_mutex;
+	bool is_i2c_protocol;
 };
 
 static inline struct ipmb_dev *to_ipmb_dev(struct file *file) @@ -112,6 +113,25 @@ static ssize_t ipmb_read(struct file *file, char __user *buf, size_t count,
 	return ret < 0 ? ret : count;
 }
 
+static int ipmb_i2c_write(struct i2c_client *client, u8 *msg, u8 addr) 
+{
+	struct i2c_msg i2c_msg;
+
+	/*
+	 * subtract 1 byte (rq_sa) from the length of the msg passed to
+	 * raw i2c_transfer
+	 */
+	i2c_msg.len = msg[IPMB_MSG_LEN_IDX] - 1;
+
+	/* Assign message to buffer except first 2 bytes (length and address) */
+	i2c_msg.buf = msg + 2;
+
+	i2c_msg.addr = addr;
+	i2c_msg.flags = client->flags & I2C_CLIENT_PEC;
+
+	return i2c_transfer(client->adapter, &i2c_msg, 1); }
+
 static ssize_t ipmb_write(struct file *file, const char __user *buf,
 			size_t count, loff_t *ppos)
 {
@@ -133,6 +153,12 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
 	netf_rq_lun = msg[NETFN_LUN_IDX];
 
+	/* Check i2c block transfer vs smbus */
+	if (ipmb_dev->is_i2c_protocol) {
+		ret = ipmb_i2c_write(ipmb_dev->client, msg, rq_sa);
+		return (ret == 1) ? count : ret;
+	}
+
 	/*
 	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
 	 * i2c_smbus_xfer
@@ -302,6 +328,9 @@ static int ipmb_probe(struct i2c_client *client,
 	if (ret)
 		return ret;
 
+	ipmb_dev->is_i2c_protocol
+		= device_property_read_bool(&client->dev, "i2c-protocol");
+
 	ipmb_dev->client = client;
 	i2c_set_clientdata(client, ipmb_dev);
 	ret = i2c_slave_register(client, ipmb_slave_cb);
--
2.17.1



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
