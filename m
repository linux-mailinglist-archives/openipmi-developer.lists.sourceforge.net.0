Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id A5B49FB9EE
	for <lists+openipmi-developer@lfdr.de>; Wed, 13 Nov 2019 21:33:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUzKF-0004OW-Ds; Wed, 13 Nov 2019 20:33:15 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iUzKD-0004OK-HY
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 20:33:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=1isM0vHCvgwocFX9Dz123HMiWNwj84fZ21Xj+npaHuA=; b=FRTCOBvFdlDFNGc6IKFubPspTO
 2Svg0WH9fgntQJlR1BPU6Sf4ueAzK4x6wgu3qqSpWElyc2gFeZ6jki3DXuRGnkjK1cOepQH3ofWGI
 UC3N+zR0GKk249PFW3l+rW4/o/lFBzTX8Ti9mPqH2XAYkd4mSrz4uPxHq8HDe+pd2NkY=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=1isM0vHCvgwocFX9Dz123HMiWNwj84fZ21Xj+npaHuA=; b=Qf5OzW9dp8b50aEwlqfj2ooauM
 uhCihtf0m6hSxJ2DcBluJyj+EOtEc0bpUIcVFGNRzDzZn/vypKbh7gg5/AkRbxKzJbDiGoaIh142R
 PZtlbftHZau11R2PLYxWQp0SxkXUB73yKoGnjIY6pKCi116M8ivTsH+D+Z/COcCJExoE=;
Received: from mail-eopbgr80041.outbound.protection.outlook.com ([40.107.8.41]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUzK6-00FYEs-Ey
 for openipmi-developer@lists.sourceforge.net; Wed, 13 Nov 2019 20:33:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Ski7WenfhqOJZQz52QrXRe86LEUOuGxTWkpBSnnaQdtWl0RdK/qM09QSFMNxqrvoJ3Eu0lHhuCY8wOcUSehmRlT29f/AZ+b7H2z098LmVFTbob6AzJEi1rzqWw5BEsB487GkBsabbH0g7HxqG8BumFNDzwHMM5TNTL9dnUjYKo0/PlKirgJM6tvYuaO/DM/NmwPV04HOJPnaP9ec+OD8NeepoLDQqyS/C6HfDkp1Iusqzw1DN+86W5zpiAHsD+ieqjU++DgL6HsZkNU40IlxDB7oZUY27+OLbHqbeut0VMBFnWIfGHSrRNauLw1KOGG7gFyvNXI6zZeGDUv+qKRczQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1isM0vHCvgwocFX9Dz123HMiWNwj84fZ21Xj+npaHuA=;
 b=IEjo+Qjz+cmr/rSB+25bIvz+lrt2RfQvGie56jGOf6fnjXtRlvw0+PjMgOG3DaUdsnocsFtvn5DdQd1R5ZMqorBGHvv+EafOxTURDZkyikZcHlZFELo1rGQA1QSa/tX18T/SjwfZNn+zn6OLEMzypbToTNJrjXDBCMq7ZKtMpdrwNSvXaMgo5X5/UolpYdkpnZZRjGm9xnEUq/dLV//tLGUTV+IkOFOc0LCXElGrk4Retl90NBH5p3dD1HHKwiAdivNTOH/3Nv1lMCujTJWYrs9EB0F/bZ2gkCRGc0A7liWd8ZZikO/8R6MDfi9B6vf/Z58YIooPz+yNf4alg4qQoQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1isM0vHCvgwocFX9Dz123HMiWNwj84fZ21Xj+npaHuA=;
 b=Xau+qgSzBAZrdLoBzIcvoAlqO8LXj+wf0uJaM8HwxRm7TLaigIzHj5BAGIrCPTdZFs0cvLxzlH2/nGm86f92qHJmOikYZiaqDhkUCZ6HUD7/ohx5DCxNyRhuXh1ryVZ1moy/+WMl6em5JW44fHSqybihuf3kYuM/Qn9saSHe25w=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2616.eurprd05.prod.outlook.com (10.172.230.135) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Wed, 13 Nov 2019 20:32:58 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2430.028; Wed, 13 Nov
 2019 20:32:57 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: Vijay Khemka <vijaykhemka@fb.com>, Corey Minyard <minyard@acm.org>, Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v3] drivers: ipmi: Support raw i2c packet in IPMB
Thread-Index: AQHVmlgl1O96SHtmeUyoyP3vT4129aeJh9MQ
Date: Wed, 13 Nov 2019 20:32:57 +0000
Message-ID: <DB6PR0501MB2712FAF45EE8CB2D513465A9DA760@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191113192325.2821207-1-vijaykhemka@fb.com>
In-Reply-To: <20191113192325.2821207-1-vijaykhemka@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: bef2e555-82d9-4217-d319-08d76878ab88
x-ms-traffictypediagnostic: DB6PR0501MB2616:
x-microsoft-antispam-prvs: <DB6PR0501MB26169F7BB501E69EA19A5AABDA760@DB6PR0501MB2616.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0220D4B98D
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(366004)(39860400002)(396003)(376002)(189003)(199004)(13464003)(6506007)(53546011)(102836004)(76176011)(486006)(446003)(11346002)(476003)(33656002)(186003)(99286004)(26005)(80792005)(8676002)(7416002)(76116006)(7736002)(7696005)(305945005)(8936002)(74316002)(256004)(81166006)(81156014)(14444005)(66066001)(3846002)(6116002)(14454004)(6246003)(9686003)(2501003)(4326008)(2906002)(478600001)(25786009)(5660300002)(71190400001)(71200400001)(110136005)(66476007)(54906003)(229853002)(66556008)(64756008)(66446008)(66946007)(6436002)(55016002)(316002)(86362001)(52536014)(2201001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2616;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 5KOqFfxyVaxSBz4NnFDPUj7yHbj8UfBfgtBjTdohSYIYskRTxYg4R0qumf51Nvlsntj1rotjgE7Bvd8pZeJQIHBYQegVx/AUn+SlAXQxYKi42OsVR7muJ4avk4bc55zJ9aEbbbH1KHhzHGEzpWVuBU4+wAFuRFFCiE8OcAdZ31nnr0eH/O0Kd4YXIhuI3qmuWC0mJKqMzffrDQm6yVORKV0RL4C65YMoUmIppqeR8OT3CtjiCn3SA6ndzYxZBf9ZI8CaEkCHnFvBwU/bD6w0cmk0phkpGEmAm+FhoR+0f3WNG+Y8Jd58KxXwtOFuMsPjD/h+XUkBgEl5JFlQlvnAS80hl7wuN5kWV4awYhveWUeatGBESXGUUdu2hJLbs5FegtJfvEzmVzuk3hCwhsaZppH2IOGF9zgB73JDeUJSscYX/1TKsbCQvEc6vCd+S91K
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: bef2e555-82d9-4217-d319-08d76878ab88
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Nov 2019 20:32:57.8909 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7VQ2MyFr/CGf4+jzOxAxtWZfkQa3z9n1a/O5QoO4/iLRKAC7qEd2t062xVJ2GlbV1HT88QRFoXdYtYhMP9vyUg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2616
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: fb.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.8.41 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUzK6-00FYEs-Ey
Subject: Re: [Openipmi-developer] [PATCH v3] drivers: ipmi: Support raw i2c
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

Inline response:

-----Original Message-----
From: Vijay Khemka <vijaykhemka@fb.com> 
Sent: Wednesday, November 13, 2019 2:23 PM
To: Corey Minyard <minyard@acm.org>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
Cc: vijaykhemka@fb.com; cminyard@mvista.com; Asmaa Mnebhi <Asmaa@mellanox.com>; joel@jms.id.au; linux-aspeed@lists.ozlabs.org; sdasari@fb.com
Subject: [PATCH v3] drivers: ipmi: Support raw i2c packet in IPMB

Many IPMB devices doesn't support smbus protocol and current driver support only smbus devices. Added support for raw i2c packets.

User can define use-i2c-block in device tree to use i2c raw transfer.

Asmaa>> Fix the description: "The ipmb_dev_int driver only supports the smbus protocol at the moment. Add support for the i2c protocol as well. There will be a variable passed by though the device tree or ACPI table which sets the configures the protocol as either i2c or smbus."

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 drivers/char/ipmi/ipmb_dev_int.c | 48 ++++++++++++++++++++++++++++++++
 1 file changed, 48 insertions(+)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index ae3bfba27526..16d5d4b636a9 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -63,6 +63,7 @@ struct ipmb_dev {
 	spinlock_t lock;
 	wait_queue_head_t wait_queue;
 	struct mutex file_mutex;
+	bool use_i2c;
 };
 
Asmaa>> rename this variable : is_i2c_protocol

 static inline struct ipmb_dev *to_ipmb_dev(struct file *file) @@ -112,6 +113,39 @@ static ssize_t ipmb_read(struct file *file, char __user *buf, size_t count,
 	return ret < 0 ? ret : count;
 }
 
+static int ipmb_i2c_write(struct i2c_client *client, u8 *msg) {
+	unsigned char *i2c_buf;
+	struct i2c_msg i2c_msg;
+	ssize_t ret;
+	u8 msg_len;
+
+	/*
+	 * subtract 1 byte (rq_sa) from the length of the msg passed to
+	 * raw i2c_transfer
+	 */
+	msg_len = msg[IPMB_MSG_LEN_IDX] - 1;
+
+	i2c_buf = kzalloc(msg_len, GFP_KERNEL);

Asmaa >> We do not want to use kzalloc every time you execute this write function. It would create so much fragmentation.
You don't really need to use kzalloc anyways. 

Also, this code chunk is short, so you can call it directly from the write function. I don't think you need a separate function for it.

+	if (!i2c_buf)
+		return -EFAULT;
+
+	/* Copy message to buffer except first 2 bytes (length and address) */
+	memcpy(i2c_buf, msg+2, msg_len);
+
+	i2c_msg.addr = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
+	i2c_msg.flags = client->flags &
+			(I2C_M_TEN | I2C_CLIENT_PEC | I2C_CLIENT_SCCB);
Asmaa>> I don't think ipmb supports 10 bit addresses. The max number of bits in the IPMB address field is 8.

+	i2c_msg.len = msg_len;
+	i2c_msg.buf = i2c_buf;
+
+	ret = i2c_transfer(client->adapter, &i2c_msg, 1);
+	kfree(i2c_buf);
+
+	return ret;
+
+}
+
 static ssize_t ipmb_write(struct file *file, const char __user *buf,
 			size_t count, loff_t *ppos)
 {
@@ -133,6 +167,12 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
 	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
 	netf_rq_lun = msg[NETFN_LUN_IDX];
 
+	/* Check i2c block transfer vs smbus */
+	if (ipmb_dev->use_i2c) {
+		ret = ipmb_i2c_write(ipmb_dev->client, msg);
+		return (ret == 1) ? count : ret;
+	}
+
 	/*
 	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
 	 * i2c_smbus_xfer
@@ -277,6 +317,7 @@ static int ipmb_probe(struct i2c_client *client,
 			const struct i2c_device_id *id)
 {
 	struct ipmb_dev *ipmb_dev;
+	struct device_node *np;
 	int ret;
 
 	ipmb_dev = devm_kzalloc(&client->dev, sizeof(*ipmb_dev), @@ -302,6 +343,13 @@ static int ipmb_probe(struct i2c_client *client,
 	if (ret)
 		return ret;
 
+	/* Check if i2c block xmit needs to use instead of smbus */
+	np = client->dev.of_node;
+	if (np && of_get_property(np, "use-i2c-block", NULL))
Asmaa>> Rename this variable i2c-protocol. And also, apply this to ACPI as well.
+		ipmb_dev->use_i2c = true;
+	else
+		ipmb_dev->use_i2c = false;
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
