Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 60865F935F
	for <lists+openipmi-developer@lfdr.de>; Tue, 12 Nov 2019 15:54:02 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iUXYO-0008KE-Ld; Tue, 12 Nov 2019 14:54:00 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iUXYN-0008K7-Sz
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 14:53:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=AYy7JsrpEVYcwD2IL2OZQ31r0vayf6hsDJOlmOJndu0=; b=EIp+kteLVm9tzRmVE+dAqvPemA
 Hb+8aU4QBTnfn1UmHo5247A2MrmgpUXfseiLZaX+IC0CXF1D/Y9Vm9zh//B0sIAM7qMM+Qh5+UPzX
 nyGS/IbEOmy5v6Ys82gjdlh/ncukRjg0quLh5DE+kQpxXH33P+rT7wqg9XeyCc233YzU=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=AYy7JsrpEVYcwD2IL2OZQ31r0vayf6hsDJOlmOJndu0=; b=ThxRYbsEoeJvRcAkDiE+0FJ/HO
 HSVMRsmgUcjx8SRC+V1vNiXh/9AKfvyywIvc0CQK5zvTIkYyhiBO0F4ydAALfGh+1QeDO4ZE4pO+j
 X1oyRAkmWjUG55B4JloeCFc524d/cVC4o9PmIOgxxP6eoYRCjMbLdlpAwp2zPywYiY1k=;
Received: from mail-eopbgr60046.outbound.protection.outlook.com ([40.107.6.46]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iUXYJ-00DVhL-Km
 for openipmi-developer@lists.sourceforge.net; Tue, 12 Nov 2019 14:53:59 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=E+hDa4w4FVkjVCuLFUs53Jm29DqZXFTbxJxT4E4MH77AvL3f+Av4X74vc73ub8qOQg0nfOgAELHCdUI7+uTui+uIgEa2ZZI2UL42xP4c6bPqjDZ19FyVYLl2QEPNbmTwNZT8+Ogbs5zpz63qX+vZyFb31vhHxxZXiAF/nTyOL4/9nvn/k1LSVrg6ALdVqYuyEJv/AdNJZQ3CDBXGFlyYnULHXpaWACGfERoja5cYcBkn+VF48m9ba+tqEMOsScWZgKpG8WwfmqzjGpgYn0GAB9mWz/uPQcV0Vt1bcj51JZioxngyOpkmOOqgJZBnw+/5+xRsJrZcdyAUvgDTvm3/+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AYy7JsrpEVYcwD2IL2OZQ31r0vayf6hsDJOlmOJndu0=;
 b=UlM+ykYoxOW15wJYsnRyO2cN9MK4FKTNRbC+/OChzb9ricvGbpe6ZEJ2dcAQxV2FM/+N3lm4SpSws92aid6IzNaBBjHExtCdlCNzJgwUSds0ZsCWex7LOYmCZS67i5O4A+aE+dskWcWtxygwepl7coMfd7gIUsNrdT1bG67Kq1WOUeR+6ipOfe9GfRJs1qRhgM3nEUIOCW14XfNv/i5bB9cBCxjIiJ6Mk4PBQThFx51ll/U38f9T/cQdGNVDS25UZfRw8ODGeyIHFp320daTVdbzyIRWy0NKvCkaAimY0V4kObAfRGVdaeFM8l1cwSgKc+DOdu0nfFoCez+R+u/1dg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AYy7JsrpEVYcwD2IL2OZQ31r0vayf6hsDJOlmOJndu0=;
 b=cFNkBRzXKaTMaYbqDFSqH46fyjbZnKry83j0phKcQgpTN2vsxa0SXLcsQ7iW5b7wEHyEHurlkT1DUDT9FqCIGn9DwZiri41J78jEZjRogxGxQjdroZXuN6yTeiZ735NtSgDFVlTwGsE2NRUUB2+0d0gsC4b83Kt2RxXLvnudKZI=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2599.eurprd05.prod.outlook.com (10.168.71.8) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.25; Tue, 12 Nov 2019 14:19:43 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2430.027; Tue, 12 Nov
 2019 14:19:43 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: "minyard@acm.org" <minyard@acm.org>, Vijay Khemka <vijaykhemka@fb.com>
Thread-Topic: [PATCH 1/2] drivers: ipmi: Support raw i2c packet in IPMB
Thread-Index: AQHVmQJhVFa2qHxMQE+ZOphOmDlBEKeHeXcAgAAc2cA=
Date: Tue, 12 Nov 2019 14:19:43 +0000
Message-ID: <DB6PR0501MB271273D1EC0CF9CAA67A22CCDA770@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191112023610.3644314-1-vijaykhemka@fb.com>
 <20191112123602.GD2882@minyard.net>
In-Reply-To: <20191112123602.GD2882@minyard.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c3e66bec-4079-4eee-037a-08d7677b5cf8
x-ms-traffictypediagnostic: DB6PR0501MB2599:
x-microsoft-antispam-prvs: <DB6PR0501MB259995E630469798C9AD5026DA770@DB6PR0501MB2599.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3383;
x-forefront-prvs: 021975AE46
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(346002)(136003)(376002)(39860400002)(396003)(366004)(13464003)(199004)(189003)(6246003)(80792005)(2501003)(5660300002)(14454004)(478600001)(6436002)(52536014)(4326008)(229853002)(25786009)(6116002)(3846002)(9686003)(66556008)(66476007)(66946007)(64756008)(66446008)(76116006)(55016002)(110136005)(446003)(486006)(256004)(71190400001)(71200400001)(81156014)(99286004)(7416002)(11346002)(8676002)(54906003)(66066001)(8936002)(476003)(81166006)(74316002)(186003)(7696005)(76176011)(6506007)(53546011)(33656002)(86362001)(7736002)(2906002)(305945005)(316002)(26005)(102836004);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2599;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 4Obxb6zYgP23kg4SMlT5/dYX+94pH97Y26wwj2q4bUb6m+I4fAZFU19z5JBzVZZhijOi+Qe9vczStMoKjdZkUw3u9lAjrI/tGwLNNYU0vhYjihJBsfluUzu1nHki0X0UbE37mBbXcu1u5x8kOCu8fGXtaImJ7BF4kOb6uxuVs+ERscW8IszGPwwpzlpg8ed28NXpkkty7FjFILl4nL3qL1xg+IAOozSqAniJTigQksKnN//5IwT9mN1K477IDdNwVz16TiHk+L7z7w4v5tjdZhW5Cpah7LCewttEyViZjBHDANQG1cGKdbAYOtHLygTQJzeLv9skEpB2lsp3SVtAJqGww7WJb+Y/ay3RWW8OXsXqbeVJOqof8vayPEGRglcPgK+X3J5fFHeLt7fNyBMS3UL02CWtMHpnc6crn/2OXMflbcY2EbLS1YMHFwGd14sG
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c3e66bec-4079-4eee-037a-08d7677b5cf8
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Nov 2019 14:19:43.3471 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 16k3ZLW91NV+s9QAiSkiMWB8eC2D2BdsqXC/Ue4Egsrhl7/wkpPmh0KDf5w08FeBwoMbyjVesluloRKI2ziXZw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2599
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mellanox.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.6.46 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iUXYJ-00DVhL-Km
Subject: Re: [Openipmi-developer] [PATCH 1/2] drivers: ipmi: Support raw i2c
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
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I agree with corey. You can take a look at the ipmi_ssif.c driver which does that.

-----Original Message-----
From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
Sent: Tuesday, November 12, 2019 7:36 AM
To: Vijay Khemka <vijaykhemka@fb.com>
Cc: Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; cminyard@mvista.com; Asmaa Mnebhi <Asmaa@mellanox.com>; joel@jms.id.au; linux-aspeed@lists.ozlabs.org; sdasari@fb.com
Subject: Re: [PATCH 1/2] drivers: ipmi: Support raw i2c packet in IPMB

On Mon, Nov 11, 2019 at 06:36:09PM -0800, Vijay Khemka wrote:
> Many IPMB devices doesn't support smbus protocol and current driver 
> support only smbus devices. So added support for raw i2c packets.

I haven't reviewed this, really, because I have a more general concern...

Is it possible to not do this with a config item?  Can you add something to the device tree and/or via an ioctl to make this dynamically configurable?  That's more flexible (it can support mixed devices) and is friendlier to users (don't have to get the config right).

Config items for adding new functionality are generally ok.  Config items for choosing between two mutually exclusive choices are generally not.

-corey

> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>
> ---
>  drivers/char/ipmi/Kconfig        |  6 ++++++
>  drivers/char/ipmi/ipmb_dev_int.c | 30 ++++++++++++++++++++++++++++++
>  2 files changed, 36 insertions(+)
> 
> diff --git a/drivers/char/ipmi/Kconfig b/drivers/char/ipmi/Kconfig 
> index a9cfe4c05e64..e5268443b478 100644
> --- a/drivers/char/ipmi/Kconfig
> +++ b/drivers/char/ipmi/Kconfig
> @@ -139,3 +139,9 @@ config IPMB_DEVICE_INTERFACE
>  	  Provides a driver for a device (Satellite MC) to
>  	  receive requests and send responses back to the BMC via
>  	  the IPMB interface. This module requires I2C support.
> +
> +config IPMB_SMBUS_DISABLE
> +	bool 'Disable SMBUS protocol for sending packet to IPMB device'
> +	depends on IPMB_DEVICE_INTERFACE
> +	help
> +	  provides functionality of sending raw i2c packets to IPMB device.
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c 
> b/drivers/char/ipmi/ipmb_dev_int.c
> index ae3bfba27526..2419b9a928b2 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -118,6 +118,10 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
>  	u8 rq_sa, netf_rq_lun, msg_len;
>  	union i2c_smbus_data data;
> +#ifdef CONFIG_IPMB_SMBUS_DISABLE
> +	unsigned char *i2c_buf;
> +	struct i2c_msg i2c_msg;
> +#endif
>  	u8 msg[MAX_MSG_LEN];
>  	ssize_t ret;
>  
> @@ -133,6 +137,31 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
>  	netf_rq_lun = msg[NETFN_LUN_IDX];
>  
> +#ifdef CONFIG_IPMB_SMBUS_DISABLE
> +	/*
> +	 * subtract 1 byte (rq_sa) from the length of the msg passed to
> +	 * raw i2c_transfer
> +	 */
> +	msg_len = msg[IPMB_MSG_LEN_IDX] - 1;
> +
> +	i2c_buf = kzalloc(msg_len, GFP_KERNEL);
> +	if (!i2c_buf)
> +		return -EFAULT;
> +
> +	/* Copy message to buffer except first 2 bytes (length and address) */
> +	memcpy(i2c_buf, msg+2, msg_len);
> +
> +	i2c_msg.addr = rq_sa;
> +	i2c_msg.flags = ipmb_dev->client->flags &
> +			(I2C_M_TEN | I2C_CLIENT_PEC | I2C_CLIENT_SCCB);
> +	i2c_msg.len = msg_len;
> +	i2c_msg.buf = i2c_buf;
> +
> +	ret = i2c_transfer(ipmb_dev->client->adapter, &i2c_msg, 1);
> +	kfree(i2c_buf);
> +
> +	return (ret == 1) ? count : ret;
> +#else
>  	/*
>  	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
>  	 * i2c_smbus_xfer
> @@ -149,6 +178,7 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  			     I2C_SMBUS_BLOCK_DATA, &data);
>  
>  	return ret ? : count;
> +#endif
>  }
>  
>  static unsigned int ipmb_poll(struct file *file, poll_table *wait)
> --
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
