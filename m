Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id BA9AFFC902
	for <lists+openipmi-developer@lfdr.de>; Thu, 14 Nov 2019 15:36:19 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iVGEM-0006C2-IH; Thu, 14 Nov 2019 14:36:18 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iVGEL-0006Bv-P4
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 14:36:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y8DR+rYEDJoUq4ak/ImJ6aZLzZFpza/xA7R9OT5jHuo=; b=Cgyl5G/NfrX4m1n8BHi3rL0+gU
 UWAnrNVLfHRgZYJPLxOJzhNadL4T+RZ0M72DxJLJM29Ym26WfcXChhrETcfbmoawfXvNJM0+Bch//
 0xNOa7BxJOs9rkBJ6tumINcm/rxQKx3b5XDk5BT23jrPwUblxXJAfVSVPF/s1jJAK2J4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=Y8DR+rYEDJoUq4ak/ImJ6aZLzZFpza/xA7R9OT5jHuo=; b=ZBrEOLGP73aFDjBxUtwv5t4ou9
 PxLY39O+oI01sAGlFjR27oG28+fN8jXILoKp2A1WvLIbrbYPWrCjccAZb7Buh9Wf+FnfeVZyabnog
 Fre8Zk5GbTTDFP+2FxjYvGfCJX3KYQ5mJMyNvK7LFjP3Ejj0VoyqGVslT8yX+JJpvavQ=;
Received: from mail-eopbgr150043.outbound.protection.outlook.com
 ([40.107.15.43] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iVGEJ-00GRTr-NM
 for openipmi-developer@lists.sourceforge.net; Thu, 14 Nov 2019 14:36:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=mrWMKOuvTX0wg4bPDhcYc/bD+3Aygdeq5c5tok1Q2SiH5Qvf0fE/vCCedBgEX9p1WczLWL6boEA2ikTwM21LyhS9LaH/fAoAvQlKe2hixeaxFRoSZxKvpDWiCfXAXFkfeUuvGx35qV6NirhDSFo+A36yh0tceOrSLuUo2yGPuU41swknIbfqxQQNEsQ3KCtJFwGy43BdjXLlGs8PTikO6USPsf7nEG2C8NqxQQTPuc39TXYGyc8Go4uysfZ4ty/cknWhYEfahobHRdR8VKtnATQ8gUaQnQe34ApR4QvePj83vBdpGvgtupIJ0gIn6W6DGPtdYln+pC0g6SOo2gVRsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8DR+rYEDJoUq4ak/ImJ6aZLzZFpza/xA7R9OT5jHuo=;
 b=PS1bWt/i4sOSYlV5HWbgBBciKRjVAmwjIJCrTe3S7dJgbcNq85GzGdhTuH4AmhCMQIMgpV7DBwZjGNUOGI1SRjbIp2l3BubqFml0U5rOqAt11bTivHjZRw3669dzqcS5QcHyRHANNzxEy/KOol41xl67z9rplC9H4AH4+14jKW8ljQDxNPmNkGhmArSDZ5pLSidoDpCBI+Qti5R2EX9UvlFasDeLT30shUE/3OKYKJPlA+dyTuphHko75sVoNsdnAmWiXhPcTFpfvN4jDwSso2g+DI97/OePuxkPCWVyu8YQ7X2opFV35YO0V98GMz2EsSD/YAmG4dbAP1YiXBWkxQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y8DR+rYEDJoUq4ak/ImJ6aZLzZFpza/xA7R9OT5jHuo=;
 b=CDjrWMzo/ZVwaGpD1Bm+elP1P46r+OXyIc1PsxN4XegshmbO11M+Sj9JBRKlClmKDQUxjJ4I22re/Se6cqPXa/4TQ6ZYo2wIi4dJFPITKGGreXRaNtDlz3v7gQ/f5LkXYj6lj1Yil/gMnmG46+cFdbSQPdmCD4NltGLVYSwKJZo=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2855.eurprd05.prod.outlook.com (10.172.227.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2451.22; Thu, 14 Nov 2019 14:21:48 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2451.027; Thu, 14 Nov
 2019 14:21:48 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: "minyard@acm.org" <minyard@acm.org>, Vijay Khemka <vijaykhemka@fb.com>
Thread-Topic: [PATCH v4] drivers: ipmi: Support raw i2c packet in IPMB
Thread-Index: AQHVmnw2jQvA7h95R066pXtlC6V86aeKtZqAgAACfbA=
Date: Thu, 14 Nov 2019 14:21:48 +0000
Message-ID: <DB6PR0501MB27121BF4E680F14A119232B4DA710@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191113234133.3790374-1-vijaykhemka@fb.com>
 <20191114141037.GP2882@minyard.net>
In-Reply-To: <20191114141037.GP2882@minyard.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c0c8c76b-52da-4a71-b677-08d7690dfc27
x-ms-traffictypediagnostic: DB6PR0501MB2855:
x-microsoft-antispam-prvs: <DB6PR0501MB28550B96374347D4253609BADA710@DB6PR0501MB2855.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7691;
x-forefront-prvs: 02213C82F8
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(136003)(396003)(39860400002)(346002)(199004)(189003)(13464003)(6436002)(9686003)(7736002)(305945005)(2906002)(66946007)(11346002)(476003)(66446008)(64756008)(66556008)(66476007)(446003)(86362001)(54906003)(74316002)(110136005)(4326008)(55016002)(316002)(76116006)(229853002)(6246003)(7696005)(76176011)(99286004)(25786009)(102836004)(14454004)(256004)(14444005)(80792005)(478600001)(33656002)(7416002)(6506007)(66066001)(26005)(81156014)(2501003)(486006)(71200400001)(53546011)(71190400001)(3846002)(6116002)(8936002)(81166006)(5660300002)(8676002)(52536014)(186003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2855;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: e4egL/aiAFjwUqADorrpXeGGo+4Mx69ve1z4q7DSIDst0A5PRgGCuh/U3zXM3PSaFX15RqJxwuQvcjTOCp74qrjebsCVgYIMZI31MhkgXVeAzjX6ZaQSU1bqaGkm5phfbXfTG+m7Dn1iUYmzuEr3xWz5nAa9t3RCL+hUM9rZmGJ/lNI5tDMFFsoCqkkZlDTjv8HWFqK3euKpkC1srZv++GKRq7fiEUGPdIoPwvE7lNxlt7Xb58JuMAYm2kOxy2diwD9fxE+0U8Bc8RkrCkR0nk+yvwOEwDFnkhftRd51Fkh+XllIrE3eu8FUL5A2Ua3jDqBWWniFqRfsj0Pio0PzYRk9DrwTut8lO/7rFjW1CCTWPlg7qHEEkrwgQfty+YJ0ya3AH9AJAoT8qnhRYtQBhphleb2gMSUWty9gwpt6kZr5NNqgkrPwpENuIXcXpqNn
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c0c8c76b-52da-4a71-b677-08d7690dfc27
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Nov 2019 14:21:48.1167 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ep/XmNs3DQ6Jr48JAiRJ8cDP2vUMyLFev+9NFvkO9nxU8DwXdsWq9yDUnsbheEVr/QgO/RDVh4HzWK5XY/Qmlw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2855
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mellanox.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.15.43 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iVGEJ-00GRTr-NM
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
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Vijay, could you update the existing ipmb documentation to list and describe this new device tree/acpi variable i2c-protocol.

-----Original Message-----
From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
Sent: Thursday, November 14, 2019 9:11 AM
To: Vijay Khemka <vijaykhemka@fb.com>
Cc: Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; openipmi-developer@lists.sourceforge.net; linux-kernel@vger.kernel.org; cminyard@mvista.com; Asmaa Mnebhi <Asmaa@mellanox.com>; joel@jms.id.au; linux-aspeed@lists.ozlabs.org; sdasari@fb.com
Subject: Re: [PATCH v4] drivers: ipmi: Support raw i2c packet in IPMB

On Wed, Nov 13, 2019 at 03:41:33PM -0800, Vijay Khemka wrote:
> Many IPMB devices doesn't support smbus protocol and current driver 
> support only smbus devices. Added support for raw i2c packets.
> 
> User can define i2c-protocol in device tree to use i2c raw transfer.
> 
> Signed-off-by: Vijay Khemka <vijaykhemka@fb.com>

With Aasma's response, I am ok with this.

One thing, though.  This is the slave device on the I2C, not the master device that has the issue, right?  So it's at least theoretically possible to have one SMBus and one I2C IPMB device on the same master, right?

For normal I2C, devices are in the device tree and get added to the kernel device handling.  It looks like that is not being done in your case.  But really, the "right" way to do this is to have the IPMB slaves added as Linux devices and address them that way.  I'm not sure this will ever be a real issue, but if it is, there will be some work to do to fix it.

-corey

> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 32 
> ++++++++++++++++++++++++++++++++
>  1 file changed, 32 insertions(+)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c 
> b/drivers/char/ipmi/ipmb_dev_int.c
> index ae3bfba27526..10904bec1de0 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -63,6 +63,7 @@ struct ipmb_dev {
>  	spinlock_t lock;
>  	wait_queue_head_t wait_queue;
>  	struct mutex file_mutex;
> +	bool is_i2c_protocol;
>  };
>  
>  static inline struct ipmb_dev *to_ipmb_dev(struct file *file) @@ 
> -112,6 +113,25 @@ static ssize_t ipmb_read(struct file *file, char __user *buf, size_t count,
>  	return ret < 0 ? ret : count;
>  }
>  
> +static int ipmb_i2c_write(struct i2c_client *client, u8 *msg) {
> +	struct i2c_msg i2c_msg;
> +
> +	/*
> +	 * subtract 1 byte (rq_sa) from the length of the msg passed to
> +	 * raw i2c_transfer
> +	 */
> +	i2c_msg.len = msg[IPMB_MSG_LEN_IDX] - 1;
> +
> +	/* Assign message to buffer except first 2 bytes (length and address) */
> +	i2c_msg.buf = msg + 2;
> +
> +	i2c_msg.addr = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
> +	i2c_msg.flags = client->flags & I2C_CLIENT_PEC;
> +
> +	return i2c_transfer(client->adapter, &i2c_msg, 1); }
> +
>  static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  			size_t count, loff_t *ppos)
>  {
> @@ -133,6 +153,12 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	rq_sa = GET_7BIT_ADDR(msg[RQ_SA_8BIT_IDX]);
>  	netf_rq_lun = msg[NETFN_LUN_IDX];
>  
> +	/* Check i2c block transfer vs smbus */
> +	if (ipmb_dev->is_i2c_protocol) {
> +		ret = ipmb_i2c_write(ipmb_dev->client, msg);
> +		return (ret == 1) ? count : ret;
> +	}
> +
>  	/*
>  	 * subtract rq_sa and netf_rq_lun from the length of the msg passed to
>  	 * i2c_smbus_xfer
> @@ -277,6 +303,7 @@ static int ipmb_probe(struct i2c_client *client,
>  			const struct i2c_device_id *id)
>  {
>  	struct ipmb_dev *ipmb_dev;
> +	struct device_node *np;
>  	int ret;
>  
>  	ipmb_dev = devm_kzalloc(&client->dev, sizeof(*ipmb_dev), @@ -302,6 
> +329,11 @@ static int ipmb_probe(struct i2c_client *client,
>  	if (ret)
>  		return ret;
>  
> +	/* Check if i2c block xmit needs to use instead of smbus */
> +	np = client->dev.of_node;
> +	if (np && of_get_property(np, "i2c-protocol", NULL))
> +		ipmb_dev->is_i2c_protocol = true;
> +
>  	ipmb_dev->client = client;
>  	i2c_set_clientdata(client, ipmb_dev);
>  	ret = i2c_slave_register(client, ipmb_slave_cb);
> --
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
