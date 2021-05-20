Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 3162B38AD36
	for <lists+openipmi-developer@lfdr.de>; Thu, 20 May 2021 13:58:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.92.3)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ljhJm-0003CI-EC; Thu, 20 May 2021 11:58:22 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <ryan_chen@aspeedtech.com>) id 1ljh1S-0002Jp-NS
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 11:39:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PpFp5dDCTLU/n/fANNVDayB4RHXBgyU28su+zc0Jh7g=; b=GPWeskle9cvNKC2BPFUUzFE9Il
 +KBMGV7DfVZJr25YxX2g5ZvMA5XmFhPo7COS1hp25A7pzBXLqAbB88rZycAGeLDr0/cXdJveS48xB
 35L0qz03T8E+OC4YqV3WVaiOKHS/CqtcRHFwwRH3SipAi5+qpGq8L6Pfca34gYE+vLe8=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PpFp5dDCTLU/n/fANNVDayB4RHXBgyU28su+zc0Jh7g=; b=mqva933qQE1/gR5NM1sOAmeir0
 GIVPgJ69A21lwBXAkgh5DaKibRFhOOpJAW/gh9k617rB2aDtMbQChx+0s029R4OrVBiMj1zO4YFFn
 pMOJgjiNMDeyokHtYPEcibTSxLdrJxeelY7tpVKu2qz2K9P+ITLPeEOs3ptX/l8k+mss=;
Received: from mail-eopbgr1320139.outbound.protection.outlook.com
 ([40.107.132.139] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1ljh1P-00GP71-6x
 for openipmi-developer@lists.sourceforge.net; Thu, 20 May 2021 11:39:27 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=acfIEirOecbRkQgBx4FJewjnbwJC99EoIty2cqp2DWG1keLTzBVHU9GzjTyy4C+XndV24I1cFR0Bsknj9BSVwrchYUjvMzb3i9L2av8kWhlVP+oikDST6G8RKRZPYjY4hJu8RufCmkSv9jz2d6FuIXjL89QDRghWFT0zSG+zxrcdbuEgV8hmxBRUOD5X9N3xkaZ7nYPPa9Si/1xaZScBmXu9jjiL5sBccD+7C9SHDBzjCYMtmcRIBBezgTTsH3V1THcz5u43OfKb3SlzFJMhD1ylzjo/eQAAACZ+LtYOl/Do0VlKLvCzj5u0E6AdQcJzZTueFCWGH+SWYxeDhFYQug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PpFp5dDCTLU/n/fANNVDayB4RHXBgyU28su+zc0Jh7g=;
 b=RvBQlSKnmf52XYSVJmxQ4oob3tjU/GZjx4bFVgpoBD81pUcx4nH0z54cQlFV7MYaz3yjV62H+zD5yq+xvBA157M6Gb/Dgg0xpmaIGH/xhvtjgEc7le2SpsZRgXR90Knmtp7fmaAOkrhFb4k8F4N8g434X0Rq6W1wG17NqdrS+rHrvR81cNbW+XUAyDkLDtWp6u9FPJohOvtmVy1W42L8XLRHfYKmSI3vWV+4fTkr+4bz7IFTUhvqJtccYv0zMsWCC+Hf65kqsL0/b7Hynwfc8yeVt9OCiGbQ7ddga8+XoYlghfmdfZG4Tln9AueAJiIaTjdnsGnQ6Ji2eMhrcEFPew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aspeedtech.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PpFp5dDCTLU/n/fANNVDayB4RHXBgyU28su+zc0Jh7g=;
 b=egksinNRUCuUPv0La0VcuYWjurgVLzdFgjaT0zZGSpe7gVfSmrG4tT/wojs7WkqWFIMdsSEwse2fXdTJsagmNCiRGBlUDCxeYCNvDWR3rngUptki+balWzMVFEQzUZvD63Bj6YjPHNm5pV2aR2J4w7Cy6KThGUGA9vVYLK5Hoe+Q/IWpprrWyMIE7KlXZkXvsnbi+BONLr+5yzsPGIOePfYQS9L3mHgsPaQM4tFYVEiL07FXpqM+YJ1cNZ4ELtIRCxPVqEr91CObSDx2Nf0NALoDpEcvQBO4qz3ur0qYBhdmaSGDSvIvssPBrx84R/gG49hlHHV8fNX0AjACErjCzQ==
Received: from HK0PR06MB3380.apcprd06.prod.outlook.com (2603:1096:203:82::18)
 by HK2PR06MB3313.apcprd06.prod.outlook.com (2603:1096:202:3c::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4129.29; Thu, 20 May
 2021 11:06:37 +0000
Received: from HK0PR06MB3380.apcprd06.prod.outlook.com
 ([fe80::2984:f1bd:e1f9:5ed6]) by HK0PR06MB3380.apcprd06.prod.outlook.com
 ([fe80::2984:f1bd:e1f9:5ed6%7]) with mapi id 15.20.4129.033; Thu, 20 May 2021
 11:06:36 +0000
From: Ryan Chen <ryan_chen@aspeedtech.com>
To: Quan Nguyen <quan@os.amperecomputing.com>, Corey Minyard
 <minyard@acm.org>, Rob Herring <robh+dt@kernel.org>, Joel Stanley
 <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>, Brendan Higgins
 <brendanhiggins@google.com>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Wolfram Sang <wsa@kernel.org>, Philipp Zabel
 <p.zabel@pengutronix.de>, "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "devicetree@vger.kernel.org"
 <devicetree@vger.kernel.org>, "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, "linux-aspeed@lists.ozlabs.org"
 <linux-aspeed@lists.ozlabs.org>, "linux-kernel@vger.kernel.org"
 <linux-kernel@vger.kernel.org>, "linux-i2c@vger.kernel.org"
 <linux-i2c@vger.kernel.org>
Thread-Topic: [PATCH v3 5/7] i2c: aspeed: Add aspeed_set_slave_busy()
Thread-Index: AQHXTIQCISnhT+/XbEiDVKSu2FVXwqrsNmDA
Date: Thu, 20 May 2021 11:06:36 +0000
Message-ID: <HK0PR06MB3380BFA9FD9EF8F51F9DCC23F22A9@HK0PR06MB3380.apcprd06.prod.outlook.com>
References: <20210519074934.20712-1-quan@os.amperecomputing.com>
 <20210519074934.20712-6-quan@os.amperecomputing.com>
In-Reply-To: <20210519074934.20712-6-quan@os.amperecomputing.com>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: os.amperecomputing.com; dkim=none (message not signed)
 header.d=none; os.amperecomputing.com;
 dmarc=none action=none header.from=aspeedtech.com;
x-originating-ip: [211.20.114.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c8d57627-b93e-47d6-af56-08d91b7f5626
x-ms-traffictypediagnostic: HK2PR06MB3313:
x-microsoft-antispam-prvs: <HK2PR06MB3313A857F435615262D5F676F22A9@HK2PR06MB3313.apcprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4714;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: BcYzV4OWQ4ZoEc6VgGFNkxneATjNGJMCcwA9rr23xEcgk1yYqQI469v6MANIOkvkppgV6GPuvi4Yeb9XMZjDju9FBCNPPIRpKesU7F4patYs0XzQyXYR/HaBHLZeIppI0IhJvUFlbQpuq1EHw2SdGsx8eraLRa1ZN3rLqj4al2LMdeyxgdYdQCS7XPjokIb8zOPXVfvgHipEY2UkbZWuXXmKevG8KjCXvt1R+G/2pkCiG/2+qSWM3XVPpmBii8ZisFAK4nIPbIhh6RVi53ugxNI+7w10RNTkCe2UmU8n6FmWXtx2UyqtTakFiNjfJoBICzHYxImwhXk5hIk8C7v/tYBPkdl+5tRTCCgDKkamMp8Yb0gq/cAaQFWdXTM6RMEVQw3aZIzRAla/4A8G//QgWybcV2c6EWBpxFlmsBD5MlCNV59jb99AvenB2MhQBxJH3z8ZV/bq0QSWQErcZmH3liZZo6IO573r5CW/QHeVeB1Mx8ZoFDALcR6goxCg3TKWnmM7h2XMilf8AJ0lBWTYc0shpFkkrtNsL0EJd7XleEGt9lDTVBTSuo3bo48WzFKuPhjsBs8WKdTSXvbW1NX96mxQDOa+saevJ149VBA5GFC9aGHgBT6vNtsEIyIRenABqaVkvP6dJDYCI/bbfAi9Yw==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3380.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(136003)(396003)(39850400004)(366004)(346002)(376002)(7696005)(316002)(86362001)(186003)(7416002)(110136005)(9686003)(54906003)(55016002)(6506007)(55236004)(83380400001)(53546011)(2906002)(76116006)(38100700002)(71200400001)(33656002)(66556008)(66476007)(921005)(26005)(66946007)(122000001)(478600001)(4326008)(5660300002)(64756008)(8676002)(66446008)(8936002)(52536014);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?WoHRyKJqhjWT6xFq2CY3RiC0ikig1fwljBWpiE38zIX0n7B9yZoTNmcX/KT9?=
 =?us-ascii?Q?+XlqKihoZ2O81Ox0YPhdJqII7k8W/xChSB1HW+wKZouE5wOlpj2lhTTS8lF3?=
 =?us-ascii?Q?qNPSR9ox3P40mRoQ9nCHCCUyAwjzNO8N0R9OVBbx9mUQOXzq5TqebG9vAhrc?=
 =?us-ascii?Q?RxBxr33XsHax8wYjePHBQStznu2GzQuVErBwa93ef649BxIW3zOWTnu2hath?=
 =?us-ascii?Q?wiEAtipjx0QnXImV1yKIbApGuI2nuV+6L+3hkX0nQIco+y8+7hcL3oXwdnnS?=
 =?us-ascii?Q?dGahFzu01EoMu0R8eoFncDPUhYY6oDnsYaOcM1UwDw9g90JcZQFhCujz6i2b?=
 =?us-ascii?Q?fg+AMMGpyLhOGMTnGDI0exUL59LaPv5PaodP5yNo1n7cJYFqXp4NPvRi27xx?=
 =?us-ascii?Q?lUMmQ3WBplU/hCfxn8fSVB9XRHoRXtSynP5f/58gf4TN/JySQ2VYw2AzFkbp?=
 =?us-ascii?Q?cO1aCJedbixAJCKDVVpVa8eyMSyBJjd9gfiAotB0wZsCoZHN8HOUpg3SRd1/?=
 =?us-ascii?Q?fEBB2/W833OQmH/6Dy2zBX9uK2bfXR7sksC5GmbPwj7w6juikwBamXyHd4wA?=
 =?us-ascii?Q?wFSha02DTT4tGYkJmExoY1Qd/tSPVLD/piiGrxni7PjbV4UC0kLtsraCtH90?=
 =?us-ascii?Q?053kEsYDmve+1JK6rZoIQRk705b9heic6FH5PDL02LNzT0nvDu3h1k+KPSjX?=
 =?us-ascii?Q?OlHO6uwuYhL++HHD04HX1JjdVnnHDJEuBN9IZwbcTuA58qfXoXkdK6a48c9/?=
 =?us-ascii?Q?Vp+1u5vsRBS1yzdlI9L38pyG8ZOB8S0Zi3DIjQ6Y0OYbcXquanucyNZowsKq?=
 =?us-ascii?Q?2C3r1WNI4Hm7w/vHuqlEvu3rzKRPA9NOYOScxIyx2va3fRdnFxjFpqdV32g/?=
 =?us-ascii?Q?Na3/moLpi+NxjNXp/wPfInvd7/86oq4ZoafX/tAI2tDetN8fFgFx7o++RHSb?=
 =?us-ascii?Q?fD5MAmFQaamZPk3OkdqO8gbkN9Gak9NkmW+Eo+QhiWA3jS1yxhQTiCXppGzx?=
 =?us-ascii?Q?zssi/s1ftdFUR61WPYtRA7fFtRq7wSuXRsdZE6qdUcE4+XhvfqJnyueZVMkm?=
 =?us-ascii?Q?zNde3dSqzbI8YM9FpqgXLIDT2nn0hPfRBbgeEFdHngkYy9qyZv8UhxTwS0UO?=
 =?us-ascii?Q?cknqEt9/xnLIPV4zIs4fId4DHAQdOLelkhQBldFWWZ+5cRoeGP3zen8Eqi98?=
 =?us-ascii?Q?iEwtbfIlYCSQAp0PNWWCJ8QAxIwq/9UF67R1XJz7Z+c7yQYIVKgfRqvD13O2?=
 =?us-ascii?Q?WxDDqmWxxd7N9Ytsjd4FF7UFjJ9AhBYe7sHxIWQkdc2w69l2RyzQZZ7LJdD9?=
 =?us-ascii?Q?VJRJPMJ0iUIPcYtAx6FS2brx?=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3380.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c8d57627-b93e-47d6-af56-08d91b7f5626
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 May 2021 11:06:36.8548 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: eygZ4tMay3FlkM6zPUBqyQBwsgavD6Nqn/UxQ8c4hdQQR5RQEdA5MxotXhdwRZx46TG2utPxPXbt7XXK8rJaBSuUUMHXGfUTRlXjChTNi+Y=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR06MB3313
X-Spam-Score: 0.9 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: infradead.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.132.139 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1ljh1P-00GP71-6x
X-Mailman-Approved-At: Thu, 20 May 2021 11:58:21 +0000
Subject: Re: [Openipmi-developer] [PATCH v3 5/7] i2c: aspeed: Add
 aspeed_set_slave_busy()
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
Cc: Open Source Submission <patches@amperecomputing.com>,
 "Thang Q . Nguyen" <thang@os.amperecomputing.com>,
 Phong Vo <phong@os.amperecomputing.com>,
 "openbmc@lists.ozlabs.org" <openbmc@lists.ozlabs.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

> -----Original Message-----
> From: openbmc
> <openbmc-bounces+ryan_chen=aspeedtech.com@lists.ozlabs.org> On Behalf
> Of Quan Nguyen
> Sent: Wednesday, May 19, 2021 3:50 PM
> To: Corey Minyard <minyard@acm.org>; Rob Herring <robh+dt@kernel.org>;
> Joel Stanley <joel@jms.id.au>; Andrew Jeffery <andrew@aj.id.au>; Brendan
> Higgins <brendanhiggins@google.com>; Benjamin Herrenschmidt
> <benh@kernel.crashing.org>; Wolfram Sang <wsa@kernel.org>; Philipp Zabel
> <p.zabel@pengutronix.de>; openipmi-developer@lists.sourceforge.net;
> devicetree@vger.kernel.org; linux-arm-kernel@lists.infradead.org;
> linux-aspeed@lists.ozlabs.org; linux-kernel@vger.kernel.org;
> linux-i2c@vger.kernel.org
> Cc: Open Source Submission <patches@amperecomputing.com>; Thang Q .
> Nguyen <thang@os.amperecomputing.com>; Phong Vo
> <phong@os.amperecomputing.com>; openbmc@lists.ozlabs.org
> Subject: [PATCH v3 5/7] i2c: aspeed: Add aspeed_set_slave_busy()
> 
> Slave i2c device on AST2500 received a lot of slave irq while it is busy
> processing the response. To handle this case, adds and exports
> aspeed_set_slave_busy() for controller to temporary stop slave irq while slave
> is handling the response, and re-enable them again when the response is ready.
> 
> Signed-off-by: Quan Nguyen <quan@os.amperecomputing.com>
> ---
> v3:
>   + First introduce in v3 [Quan]
> 
>  drivers/i2c/busses/i2c-aspeed.c | 20 ++++++++++++++++++++
>  1 file changed, 20 insertions(+)
> 
> diff --git a/drivers/i2c/busses/i2c-aspeed.c b/drivers/i2c/busses/i2c-aspeed.c
> index b2e9c8f0ddf7..9926d04831a2 100644
> --- a/drivers/i2c/busses/i2c-aspeed.c
> +++ b/drivers/i2c/busses/i2c-aspeed.c
> @@ -944,6 +944,26 @@ static int aspeed_i2c_init(struct aspeed_i2c_bus
> *bus,
>  	return 0;
>  }
> 
> +#if IS_ENABLED(CONFIG_I2C_SLAVE)
> +void aspeed_set_slave_busy(struct i2c_adapter *adap, bool busy) {
> +	struct aspeed_i2c_bus *bus = i2c_get_adapdata(adap);
> +	unsigned long current_mask, flags;
> +
> +	spin_lock_irqsave(&bus->lock, flags);
> +
> +	current_mask = readl(bus->base + ASPEED_I2C_INTR_CTRL_REG);
> +	if (busy)
> +		current_mask &= ~(ASPEED_I2CD_INTR_RX_DONE |
> ASPEED_I2CD_INTR_SLAVE_MATCH);
> +	else
> +		current_mask |= ASPEED_I2CD_INTR_RX_DONE |
> ASPEED_I2CD_INTR_SLAVE_MATCH;
> +	writel(current_mask, bus->base + ASPEED_I2C_INTR_CTRL_REG);
> +
> +	spin_unlock_irqrestore(&bus->lock, flags); }
> +EXPORT_SYMBOL_GPL(aspeed_set_slave_busy);
> +#endif
> +
>  static int aspeed_i2c_reset(struct aspeed_i2c_bus *bus)  {
>  	struct platform_device *pdev = to_platform_device(bus->dev);
> --
> 2.28.0

Hello,
	The better idea is use disable i2c slave mode. 
	Due to if i2c controller running in slave will get slave match, and latch the SCL.
	Until cpu clear interrupt status. 
Ryan



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
