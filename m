Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 42F1CFC8E6
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Nov 2019 15:32:21 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iVGAV-0000Ef-Vu; Thu, 14 Nov 2019 14:32:19 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iVGAU-0000EX-Qn
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 14:32:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=lzkG/kKQlobcXM0xApI4jfRZhS2DhZ39rNCDCYo8L9g=; b=MdkMc/rMrdfAGJqnXyITolvU2d
 8MljxWTWGsXAqhM5SpYlQqCAEfM2OOGhEMAe4lUChRefFc482LanIRr9sRs7UzxXfIPRAaSU51rpN
 yCQbqj8D1PNRnqPfNTYYMBfV8Qw/egLD6cep+vPQrvuX26GuXv9+PiGY7ipbJ98AF/q0=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=lzkG/kKQlobcXM0xApI4jfRZhS2DhZ39rNCDCYo8L9g=; b=jTN4Cld9HMdm5MimrEkBHS1LuI
 kMWSc5F3YlRdbHvGSVAEoPZZGV+3z7N8dOy168c8eA9gUIcAsrHuKVNq9/1PjWNoW1Ld0XKOoYmRa
 lmg9b7iZ6thPT7O2b7RWz0L5C6hHOqqqXINfUPMdfmT0n2035jVtBYxeQl3+otl8Sl/8=;
Received: from mail-eopbgr150048.outbound.protection.outlook.com
 ([40.107.15.48] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVGAP-00GRGD-K2
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 14:32:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=XQUJAERYPFReQKHKQQFerN1A3lN5NS3UPupTy9GC4vWNrux63XJ6SpSoESDpke33Zoe8nUd8bnKHbwLTfD+Em8ZldB1S7jWMkAJ/wF/v2rSHqm5LoIyoYrIRie9cuk7KqQzXInNXrVLNaT8OsPR9M5KaPjsUTFatqzhtZ6uYWREONzb2X49NuvAm87ZS+w3AgGlSy3fOOCnwVsb2ahvQvHfJLO/agaLCnIDSa4JY0pzOkAW+uofar3FJIvAtb9KTLad7bMxqWxf7IROfzXZkZVDyUGbZ7jj9XjWC6cNO6S3qisD3GQBxO6VxGiwp6FJ8ed4UZELWGQ1krua0ABtvrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lzkG/kKQlobcXM0xApI4jfRZhS2DhZ39rNCDCYo8L9g=;
 b=kKRR6E+zHSWjgN8DvCXJ4M4CK3ZbuuVjlsQZhk26W9M0bviLgTe9vVkfws80YRd16NkWsLm3vLJa5TnYF78jyw1iPT+7o9UFlAUBJOCuPJucWV9oA4+iz7GJBPFfzynzQWGAvoKkftBb8RB4MRtsNbtAY/KNX3sfbCGHIuD+7RLIOYlMv0mqeeDIqwCVDPdHWbUgWDYkHzuK+FabBuhOVfqofqmWKpk/qyWSI4GETQ+DyHP6Ia0FUmA6tHp7oWj4kXg7Q0fxuNiKTNcvR+HyD0ezkZsLu7bjV2yn8HJbl+zhj7RvWX3DmxF9Udi9cRHPbBfvjMnfYrViXce9kkpjAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=lzkG/kKQlobcXM0xApI4jfRZhS2DhZ39rNCDCYo8L9g=;
 b=h+gRlHXw0IXl+1lWmfYFyE10UBVK6G09Tux6iKuz6vj1HeUvsvKm/27f5R9faxZCfmG8t/+ljbrV4/JlR4tx3myR1aD4aqSeSvbzABVxmVQVHpcQjvxZuhBN591vTUXUSz3Z2AV/z8wAqASsl8Q1KovTRQqXC+HQg5YwJYsh36w=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2664.eurprd05.prod.outlook.com (10.172.230.136) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.23; Thu, 14 Nov 2019 14:16:38 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2451.027; Thu, 14 Nov
 2019 14:16:38 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: Vijay Khemka <vijaykhemka@fb.com>, Corey Minyard <minyard@acm.org>, Arnd
 Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>
Thread-Topic: [PATCH v4] drivers: ipmi: Support raw i2c packet in IPMB
Thread-Index: AQHVmnw2jQvA7h95R066pXtlC6V86aeKtSxg
Date: Thu, 14 Nov 2019 14:16:38 +0000
Message-ID: <DB6PR0501MB2712658DD269E4B22A327A2DDA710@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191113234133.3790374-1-vijaykhemka@fb.com>
In-Reply-To: <20191113234133.3790374-1-vijaykhemka@fb.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 62ed0658-f045-400c-b62a-08d7690d4392
x-ms-traffictypediagnostic: DB6PR0501MB2664:
x-microsoft-antispam-prvs: <DB6PR0501MB2664A49B68FE9A1B4383F64ADA710@DB6PR0501MB2664.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(136003)(39860400002)(376002)(396003)(346002)(189003)(199004)(13464003)(52536014)(14444005)(6246003)(256004)(478600001)(305945005)(9686003)(86362001)(66946007)(6506007)(53546011)(6436002)(66556008)(64756008)(66446008)(2906002)(80792005)(55016002)(7736002)(66476007)(7696005)(25786009)(74316002)(5660300002)(2501003)(2201001)(76176011)(81166006)(81156014)(8676002)(186003)(446003)(11346002)(476003)(6116002)(14454004)(110136005)(54906003)(33656002)(229853002)(486006)(66066001)(3846002)(316002)(99286004)(26005)(71190400001)(7416002)(71200400001)(102836004)(8936002)(76116006)(4326008);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2664;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Gmt2q9j48u0aistliTOoX9Fi7dhvg9y+uemO+DjhIgKTBejNIpH5uGuPfMMW44RH7wNL7t0Gs3hlCnU261MtRfYtX1tozYgoaY8pM3iG7PXsRFV9d8Jo64c+qsiwvuVgBXBdJPXkOUNWe66ZFaKWXz66J3fMLEr2GXO8VFjYIVXLz3BQN9BWUUCp86Yndq1Zfa225IA4YcQlSd8T9OpqNCnJLrZsmAdUO3MbmXb98UPmq+t+iDS7V5DcU8vhUxcvIgpMmW6FMJyRNW49k/i8cX/NuB1eMJwgCSs2AzHmp/eYKsnpRYPQZxKXvS1CZAkmGudyyZEXNs4mGd8cQiYKM8iOUnwOB2llFE1z2zN0uGLxPPnofpjT6K61vpo0c4ZevkBWYdlX6r0fP53xLZqPOChHRYm9kc/uY3DRvTlGyiRVnPmz4yN9JHGKUA8RigIb
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62ed0658-f045-400c-b62a-08d7690d4392
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 14:16:38.3874 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +OUwh2qkGlN4fdtc2cKsC0CyXjG3vqfKeSpY7oQPav7xpeGSlcoA1xvB/OcitCTPuMOKroCUYfytuMA2meJyMw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2664
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: acm.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.15.48 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 -0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1iVGAP-00GRGD-K2
Subject: Re: [Openipmi-developer] [PATCH v4] drivers: ipmi: Support raw i2c
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

Hi Vijay,

You haven't addressed some of my comments.

-----Original Message-----
From: Vijay Khemka <vijaykhemka@fb.com> 
Sent: Wednesday, November 13, 2019 6:42 PM
To: Corey Minyard <minyard@acm.org>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org
Cc: vijaykhemka@fb.com; cminyard@mvista.com; Asmaa Mnebhi <Asmaa@mellanox.com>; joel@jms.id.au; linux-aspeed@lists.ozlabs.org; sdasari@fb.com
Subject: [PATCH v4] drivers: ipmi: Support raw i2c packet in IPMB

Many IPMB devices doesn't support smbus protocol and current driver support only smbus devices. Added support for raw i2c packets.

User can define i2c-protocol in device tree to use i2c raw transfer.

A>> Please fix the description as suggested in previous comments

Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
---
 drivers/char/ipmi/ipmb_dev_int.c | 32 ++++++++++++++++++++++++++++++++
 1 file changed, 32 insertions(+)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index ae3bfba27526..10904bec1de0 100644
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
 
+static int ipmb_i2c_write(struct i2c_client *client, u8 *msg) {
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
+	i2c_msg.addr = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);

You can have:
i2c_msg.flags = addr;
addr being an argument of the ipmb_i2c_write function and passed in ipmb_write. We already define it.

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
+		ret = ipmb_i2c_write(ipmb_dev->client, msg);
+		return (ret == 1) ? count : ret;
+	}
+
 	/*
 	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
 	 * i2c_smbus_xfer
@@ -277,6 +303,7 @@ static int ipmb_probe(struct i2c_client *client,
 			const struct i2c_device_id *id)
 {
 	struct ipmb_dev *ipmb_dev;
+	struct device_node *np;
 	int ret;
 
 	ipmb_dev = devm_kzalloc(&client->dev, sizeof(*ipmb_dev), @@ -302,6 +329,11 @@ static int ipmb_probe(struct i2c_client *client,
 	if (ret)
 		return ret;
 
+	/* Check if i2c block xmit needs to use instead of smbus */
+	np = client->dev.of_node;
+	if (np && of_get_property(np, "i2c-protocol", NULL))
+		ipmb_dev->is_i2c_protocol = true;

I know Corey said that ACPI is not a priority but many companies (including mine) use ACPI and I would prefer if we implement it. All you need to do is use
device_property_read_u32 function instead of of_get_property:
ret = device_property_read_u32(&client->dev, "i2c-protocol", &ipmb_dev->is_i2c_protocol);
This function does the job for both dt and acpi.

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
