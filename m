Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 313BA35545F
	for <lists+openipmi-developer@lfdr.de>; Tue,  6 Apr 2021 14:59:13 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1lTlIT-0006e7-NE; Tue, 06 Apr 2021 12:59:09 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 (envelope-from <chiawei_wang@aspeedtech.com>) id 1lTg8s-0002Nx-A0
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 07:28:55 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=FWjrxTc89Offw0ZXa+xEErXQu1aEaRleTwD0yfnmhFs=; b=lpJBVZjHF1XAV8++WkQaHorqrI
 KF5Xoc5MvzFZUF4a2QHihYRmV+emz6NqEiZ50lU1YG6R42aWQ4GThxwHFrywxTZPmYo6Zn1SSlaZT
 t2DSTEuDbmyjCGlGn+6sxV/VQXTsNgYwwww6Dz/MtgVdH9FwT+2LqT7CmsjSmuzBjbO4=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=FWjrxTc89Offw0ZXa+xEErXQu1aEaRleTwD0yfnmhFs=; b=immMCto7CocJfpc4+CkbYPfBHG
 2Y9U4EqVOXzkO9MjWu2oETGhrPgIVBQ42Wmb9am5fNWibE9hachRUM4Aybo63WkAw0ash6bS4KxY4
 sCmeeyq2WuuT9F+40nsxNRLD4zwga+qO3nhf+kHqR3FQ5Y8N+H3BIvmGolADgsZhBN3w=;
Received: from mail-eopbgr1320111.outbound.protection.outlook.com
 ([40.107.132.111] helo=APC01-PU1-obe.outbound.protection.outlook.com)
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.3)
 id 1lTf7Y-0005Aw-UQ
 for openipmi-developer@lists.sourceforge.net; Tue, 06 Apr 2021 06:23:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AKb8RVXA6DLXqi1md4dymoF4U/otofLyv5+iLrQR54YNOEpvKfMIEvaS1Ef2tkSGZA/Iv9sG4HxHIrM0HUOfsjhcOmaYsrPpakGtdUbh6pB6N5XPQ8SAsjUZKVbOoCA2uSPIb8pD3ueGNytYl9CiJw/uybIuTy9KRx77N0t2L5eGs0va9l6+ADwBc/gnpddAh/ub86s1Ks3xt+1/BvutmJ5GgvtL/phwi50ifshHMIKRNxbAV6uEcbET+UW0Z8dWfSY7sfyKeRnEMk8qHJRFylANQNXTchiCYaYXJdj75Rjl2WXFWGJKD47dC18+xcLB5KNs0zZ7bxlKiv9X1S9T+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FWjrxTc89Offw0ZXa+xEErXQu1aEaRleTwD0yfnmhFs=;
 b=YxRPL+LRl8vXKSV8iQ0HUUkJp7X7wpFZcwW74nTO+jw3faDXfontt+hIZ+3rsD6gVqkDtX1dcyRtbbMtcWMJcksbI3tVoXA0FKg7PEOJM5NsidaF1QLhbPwrkRbWiGxxwu36tcl0JetNaG50HMXCYba+1Pv5L8x0O+DdQo00lRTVdjXEZnkPSrFmZJiA3bjTlQ3MmlXoW2b/GBNUj8A8+owmEWj9/tpO4T3YKL9QGw1sxsjGI3NYKJJDJDv6/ZoHYrjWiemahPFl/jRS7UBJluHwGH2oZBR7zVpAKOveLF5BPqu+T/SQETs0470Ltqt4Np0F6Tu455iNCQTYwAMlbw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=aspeedtech.com; dmarc=pass action=none
 header.from=aspeedtech.com; dkim=pass header.d=aspeedtech.com; arc=none
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com (2603:1096:203:b8::10)
 by HK2PR0601MB1907.apcprd06.prod.outlook.com (2603:1096:202:a::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3999.32; Tue, 6 Apr
 2021 06:07:01 +0000
Received: from HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::20c8:80da:5b1d:fc06]) by HK0PR06MB3779.apcprd06.prod.outlook.com
 ([fe80::20c8:80da:5b1d:fc06%4]) with mapi id 15.20.3999.032; Tue, 6 Apr 2021
 06:07:01 +0000
From: ChiaWei Wang <chiawei_wang@aspeedtech.com>
To: Andrew Jeffery <andrew@aj.id.au>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>, "openbmc@lists.ozlabs.org"
 <openbmc@lists.ozlabs.org>, "minyard@acm.org" <minyard@acm.org>
Thread-Topic: [PATCH v2 06/21] ipmi: kcs_bmc_aspeed: Use of match data to
 extract KCS properties
Thread-Index: AQHXHIklK1hXYE3/6UilkWA9iCynRKqnHCCw
Date: Tue, 6 Apr 2021 06:07:00 +0000
Message-ID: <HK0PR06MB377918E87DEFAC54F8C00D8C91769@HK0PR06MB3779.apcprd06.prod.outlook.com>
References: <20210319062752.145730-1-andrew@aj.id.au>
 <20210319062752.145730-6-andrew@aj.id.au>
In-Reply-To: <20210319062752.145730-6-andrew@aj.id.au>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: aj.id.au; dkim=none (message not signed)
 header.d=none;aj.id.au; dmarc=none action=none header.from=aspeedtech.com;
x-originating-ip: [211.20.114.70]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 39db4913-7007-42e8-719c-08d8f8c23192
x-ms-traffictypediagnostic: HK2PR0601MB1907:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <HK2PR0601MB19079902AE772104EEAA392A91769@HK2PR0601MB1907.apcprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:3044;
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: kcSIcpv326F/OweXceZHQGBJ+MvNQY4wo1ozIvJevebmQEXQS4RdBTwueUlxLioNNmOSygCHD3CuR/RJGY3YzcW6mgABws0YTqxU1AtdAAhWx9L3U387rTZsa4S77mL2OTcMfPob22iSfhX13B3s/RxXTyAURXQJOMw0W4BeNab3r8iw3wActpQ9ShJaj81qk6OiARi/Zeeq7fQDoyR1z8PRj+msKD5d59LrBb9THJ4p67XTFM0dFh30tS+z+uuVAruIkBuPW9giFRoeP/ErQ9WsIZcy91x0cBqmuuREBhNtgP+ZEuV8+n9Aet48xxbzqAjsAPCUeqbl/UJ/sgHnPhsqCRjWr331iObbDZQDmBycEMGzOC9BXq3yZCGBEEDEpiJb6n3WFQpD1xR/DQgoQqUYIUBZp8DnNiSCIzS1Si7LwnN6fd4SBNGbiYh6PYmCuXNCJG8Cv17JdJzQ/vbC4StlYW1iMdFlas4wGF/ilK3e61zljdBASBB6j77Ajgy4+ou/swCF+6msDQH8YyK7MOobCGup6SZc6o4JT0KUC8Xekdm6yzxjU+PTUo5vqJpgA29AoiCgqTp7BoAMU3mleV2DSynooOrIg3VIZ+tvAF/hJ3unGqu+TNXdJugFeUYBPyCV2zba7HCb0RqiwFln1kHQ1dW6/9jf8MHgZcCCxlw=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HK0PR06MB3779.apcprd06.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(346002)(376002)(366004)(396003)(39840400004)(136003)(6506007)(66946007)(66446008)(38100700001)(52536014)(55016002)(55236004)(76116006)(9686003)(4326008)(8676002)(7416002)(8936002)(33656002)(86362001)(316002)(5660300002)(71200400001)(7696005)(478600001)(110136005)(186003)(54906003)(83380400001)(66476007)(26005)(66556008)(2906002)(64756008)(53546011);
 DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata: =?us-ascii?Q?nLXZ4Bq0fRNDp4Zmz71lKW8wp5Ujlmvem0gdTFHnnUzEtSFwLRRJy5fLhTFd?=
 =?us-ascii?Q?ThZNg7HUOq5yV4q4HYum00IEZM4OLeD43GXooZjLGaPvy28cRsaRS9eXW9dm?=
 =?us-ascii?Q?UTzfQRd88V+08097vnX2UvZ+6WlGOKMlP2wuP0UMP1woJXl853luo00LXAvu?=
 =?us-ascii?Q?q2AMy3G93izBoxflVNLQ5tp7hwqXvOytXRGFlUkfGOoiTzv9EvgFmGbpAdTn?=
 =?us-ascii?Q?3OaC+hQk11SBgOOddxpzx65C4kVd3IfjjCaifLT1JWuOnILdqj3MjHP5jQI0?=
 =?us-ascii?Q?W8xGWPmJlA6WbNR+jxJNJMBmAVGTvutCEmyEtF1y7riWY59syZAbitqTuoBy?=
 =?us-ascii?Q?EYZAcd4rl74bG7bh8CcnEs9IgVFAeXhtv0VA3oqK+ovQVPFqCPoPyDPN1a1g?=
 =?us-ascii?Q?5Zo1ZwaumhPzODxo32A+HdBm6qJvHBT4w+az4JRFdHSOSvHjoPQDHp0C0wBw?=
 =?us-ascii?Q?jJVzDQDy9ma2C74OlumMTPyuRF4kBYOPTStVEFjLyVd7kdndhEKTP4g+l4AG?=
 =?us-ascii?Q?tTHCdHHi/XHuKjS4h+ab5e7cG381jCTrcIXQ89g8Duxy/khlGLpFBhFAI6ph?=
 =?us-ascii?Q?9akeZxrIQzvn+tGXZzgNWRmd6tttdgppygTiYVarKs6q5RK53lWtGWBXypwn?=
 =?us-ascii?Q?oyhSvzzJT3R0Q6ZEK+7C3h2Fa6Lh3fxVJeaILGT+Nk0GX2l6LMOl9N1qlMUx?=
 =?us-ascii?Q?XoxqK/A58lZ+YHrYy2fdINy16U7lpvaqqztX2AzpB/WKQaFMNb/p3pcIBd8m?=
 =?us-ascii?Q?PPT8tZEsftk/2ZXEz9mioQbyn2KwMkmVSbq9Eu/MfY4srEzAphZ3rsOR3Sxa?=
 =?us-ascii?Q?c4aZgI29QaobhOWUQ5gow92DcWlwq6YOjYO+B8e9iCMGZNIOENse/p8vbhez?=
 =?us-ascii?Q?XCZ66z1BQkP0REXY2RW4OeZ+TpfnsHoDr387YCNll+qsyY8SPUnY1TTTqmMx?=
 =?us-ascii?Q?Q641QYm9pgSgubhi7zdX8Xn0Y291QlFk0MlgTva0oNeCfymMvFIdxukzvj86?=
 =?us-ascii?Q?pS2dSujY0tFywoMHYXKo2N+qV5M8iLbQj/LttWiZb4KPZm9d7RzYg2xBtmLX?=
 =?us-ascii?Q?PkN2QKVbqTjeVud0TprJMlkgq0tyt3VdHGJDTQoWHqTMBs7sp8Vtfwp9UKD0?=
 =?us-ascii?Q?0JVg15lWTYKp+W0hTfbZ/myWrod/uLnym4fXahuA0fntopAE5prAj9ll0g2f?=
 =?us-ascii?Q?1ZSfyiizI3Dkg8k3BmpmI9nSog4oruvBzBkuSAwIQPp97Z6DZcM7fUrdMC1O?=
 =?us-ascii?Q?RmKEmTrPYXgrXLFBvDHGWTAXCG5zdJQ0ugW1aGWstJS4VbKcbmRCwIC7S53n?=
 =?us-ascii?Q?Wr7r7xVjIDM/uSuNtGPgbKTD?=
MIME-Version: 1.0
X-OriginatorOrg: aspeedtech.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: HK0PR06MB3779.apcprd06.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 39db4913-7007-42e8-719c-08d8f8c23192
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Apr 2021 06:07:01.0410 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 43d4aa98-e35b-4575-8939-080e90d5a249
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 7Q9XqE/i7cF4LS5PVSI4FmkbGuxSqt0JBI2Ve7XZxYJIn0NKChfJJJh8/GKIrNXQJyJAeSszSdLBjz2OegGqLVK1ePQ9UwG2vs7p3LZ+Uw8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HK2PR0601MB1907
X-Spam-Score: 1.0 (+)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.132.111 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.0 PDS_BAD_THREAD_QP_64   Bad thread header - short QP
X-Headers-End: 1lTf7Y-0005Aw-UQ
X-Mailman-Approved-At: Tue, 06 Apr 2021 12:58:49 +0000
Subject: Re: [Openipmi-developer] [PATCH v2 06/21] ipmi: kcs_bmc_aspeed: Use
 of match data to extract KCS properties
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Ryan Chen <ryan_chen@aspeedtech.com>,
 "tmaimon77@gmail.com" <tmaimon77@gmail.com>,
 "linux-aspeed@lists.ozlabs.org" <linux-aspeed@lists.ozlabs.org>,
 "avifishman70@gmail.com" <avifishman70@gmail.com>,
 "venture@google.com" <venture@google.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "tali.perry1@gmail.com" <tali.perry1@gmail.com>,
 "linux-gpio@vger.kernel.org" <linux-gpio@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "lee.jones@linaro.org" <lee.jones@linaro.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 "benjaminfair@google.com" <benjaminfair@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

I have tried this patch on Intel EGS CRB with AST2600 A1 as the BMC.
Chiawei

Tested-by: Chia-Wei Wang <chiawei_wang@aspeedtech.com>

> -----Original Message-----
> From: Andrew Jeffery <andrew@aj.id.au>
> Sent: Friday, March 19, 2021 2:28 PM
> To: openipmi-developer@lists.sourceforge.net; openbmc@lists.ozlabs.org;
> minyard@acm.org
> 
> Unpack and remove the aspeed_kcs_probe_of_v[12]() functions to aid
> rearranging how the private device-driver memory is allocated.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
>  drivers/char/ipmi/kcs_bmc_aspeed.c | 146 ++++++++++++++---------------
>  1 file changed, 68 insertions(+), 78 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc_aspeed.c
> b/drivers/char/ipmi/kcs_bmc_aspeed.c
> index eefe362f65f0..061f53676206 100644
> --- a/drivers/char/ipmi/kcs_bmc_aspeed.c
> +++ b/drivers/char/ipmi/kcs_bmc_aspeed.c
> @@ -13,6 +13,7 @@
>  #include <linux/module.h>
>  #include <linux/of.h>
>  #include <linux/of_address.h>
> +#include <linux/of_device.h>
>  #include <linux/platform_device.h>
>  #include <linux/poll.h>
>  #include <linux/regmap.h>
> @@ -63,6 +64,10 @@ struct aspeed_kcs_bmc {
>  	struct regmap *map;
>  };
> 
> +struct aspeed_kcs_of_ops {
> +	int (*get_channel)(struct platform_device *pdev);
> +	int (*get_io_address)(struct platform_device *pdev); };
> 
>  static u8 aspeed_kcs_inb(struct kcs_bmc *kcs_bmc, u32 reg)  { @@ -231,13
> +236,10 @@ static const struct kcs_ioreg
> ast_kcs_bmc_ioregs[KCS_CHANNEL_MAX] = {
>  	{ .idr = LPC_IDR4, .odr = LPC_ODR4, .str = LPC_STR4 },  };
> 
> -static struct kcs_bmc *aspeed_kcs_probe_of_v1(struct platform_device
> *pdev)
> +static int aspeed_kcs_of_v1_get_channel(struct platform_device *pdev)
>  {
> -	struct aspeed_kcs_bmc *priv;
>  	struct device_node *np;
> -	struct kcs_bmc *kcs;
>  	u32 channel;
> -	u32 slave;
>  	int rc;
> 
>  	np = pdev->dev.of_node;
> @@ -245,105 +247,78 @@ static struct kcs_bmc
> *aspeed_kcs_probe_of_v1(struct platform_device *pdev)
>  	rc = of_property_read_u32(np, "kcs_chan", &channel);
>  	if ((rc != 0) || (channel == 0 || channel > KCS_CHANNEL_MAX)) {
>  		dev_err(&pdev->dev, "no valid 'kcs_chan' configured\n");
> -		return ERR_PTR(-EINVAL);
> +		return -EINVAL;
>  	}
> 
> -	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc),
> channel);
> -	if (!kcs)
> -		return ERR_PTR(-ENOMEM);
> +	return channel;
> +}
> 
> -	priv = kcs_bmc_priv(kcs);
> -	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> -	if (IS_ERR(priv->map)) {
> -		dev_err(&pdev->dev, "Couldn't get regmap\n");
> -		return ERR_PTR(-ENODEV);
> -	}
> +static int aspeed_kcs_of_v1_get_io_address(struct platform_device
> +*pdev) {
> +	u32 slave;
> +	int rc;
> 
> -	rc = of_property_read_u32(np, "kcs_addr", &slave);
> -	if (rc) {
> +	rc = of_property_read_u32(pdev->dev.of_node, "kcs_addr", &slave);
> +	if (rc || slave > 0xffff) {
>  		dev_err(&pdev->dev, "no valid 'kcs_addr' configured\n");
> -		return ERR_PTR(-EINVAL);
> +		return -EINVAL;
>  	}
> 
> -	kcs->ioreg = ast_kcs_bmc_ioregs[channel - 1];
> -	aspeed_kcs_set_address(kcs, slave);
> -
> -	return kcs;
> -}
> -
> -static int aspeed_kcs_calculate_channel(const struct kcs_ioreg *regs) -{
> -	int i;
> -
> -	for (i = 0; i < ARRAY_SIZE(ast_kcs_bmc_ioregs); i++) {
> -		if (!memcmp(&ast_kcs_bmc_ioregs[i], regs, sizeof(*regs)))
> -			return i + 1;
> -	}
> -
> -	return -EINVAL;
> +	return slave;
>  }
> 
> -static struct kcs_bmc *aspeed_kcs_probe_of_v2(struct platform_device
> *pdev)
> +static int aspeed_kcs_of_v2_get_channel(struct platform_device *pdev)
>  {
> -	struct aspeed_kcs_bmc *priv;
>  	struct device_node *np;
>  	struct kcs_ioreg ioreg;
> -	struct kcs_bmc *kcs;
>  	const __be32 *reg;
> -	int channel;
> -	u32 slave;
> -	int rc;
> +	int i;
> 
>  	np = pdev->dev.of_node;
> 
>  	/* Don't translate addresses, we want offsets for the regmaps */
>  	reg = of_get_address(np, 0, NULL, NULL);
>  	if (!reg)
> -		return ERR_PTR(-EINVAL);
> +		return -EINVAL;
>  	ioreg.idr = be32_to_cpup(reg);
> 
>  	reg = of_get_address(np, 1, NULL, NULL);
>  	if (!reg)
> -		return ERR_PTR(-EINVAL);
> +		return -EINVAL;
>  	ioreg.odr = be32_to_cpup(reg);
> 
>  	reg = of_get_address(np, 2, NULL, NULL);
>  	if (!reg)
> -		return ERR_PTR(-EINVAL);
> +		return -EINVAL;
>  	ioreg.str = be32_to_cpup(reg);
> 
> -	channel = aspeed_kcs_calculate_channel(&ioreg);
> -	if (channel < 0)
> -		return ERR_PTR(channel);
> -
> -	kcs = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc),
> channel);
> -	if (!kcs)
> -		return ERR_PTR(-ENOMEM);
> -
> -	kcs->ioreg = ioreg;
> -
> -	priv = kcs_bmc_priv(kcs);
> -	priv->map = syscon_node_to_regmap(pdev->dev.parent->of_node);
> -	if (IS_ERR(priv->map)) {
> -		dev_err(&pdev->dev, "Couldn't get regmap\n");
> -		return ERR_PTR(-ENODEV);
> +	for (i = 0; i < ARRAY_SIZE(ast_kcs_bmc_ioregs); i++) {
> +		if (!memcmp(&ast_kcs_bmc_ioregs[i], &ioreg, sizeof(ioreg)))
> +			return i + 1;
>  	}
> 
> -	rc = of_property_read_u32(np, "aspeed,lpc-io-reg", &slave);
> -	if (rc)
> -		return ERR_PTR(rc);
> +	return -EINVAL;
> +}
> 
> -	aspeed_kcs_set_address(kcs, slave);
> +static int aspeed_kcs_of_v2_get_io_address(struct platform_device
> +*pdev) {
> +	uint32_t slave;
> +	int rc;
> 
> -	return kcs;
> +	rc = of_property_read_u32(pdev->dev.of_node, "aspeed,lpc-io-reg",
> &slave);
> +	if (rc || slave > 0xffff)
> +		return -EINVAL;
> +
> +	return slave;
>  }
> 
>  static int aspeed_kcs_probe(struct platform_device *pdev)  {
> +	const struct aspeed_kcs_of_ops *ops;
>  	struct device *dev = &pdev->dev;
>  	struct kcs_bmc *kcs_bmc;
>  	struct device_node *np;
> -	int rc;
> +	int rc, channel, addr;
> 
>  	np = dev->of_node->parent;
>  	if (!of_device_is_compatible(np, "aspeed,ast2400-lpc-v2") && @@
> -352,23 +327,28 @@ static int aspeed_kcs_probe(struct platform_device
> *pdev)
>  		dev_err(dev, "unsupported LPC device binding\n");
>  		return -ENODEV;
>  	}
> -
> -	np = dev->of_node;
> -	if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc") ||
> -	    of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc"))
> -		kcs_bmc = aspeed_kcs_probe_of_v1(pdev);
> -	else if (of_device_is_compatible(np, "aspeed,ast2400-kcs-bmc-v2") ||
> -		 of_device_is_compatible(np, "aspeed,ast2500-kcs-bmc-v2"))
> -		kcs_bmc = aspeed_kcs_probe_of_v2(pdev);
> -	else
> +	ops = of_device_get_match_data(&pdev->dev);
> +	if (!ops)
>  		return -EINVAL;
> 
> -	if (IS_ERR(kcs_bmc))
> -		return PTR_ERR(kcs_bmc);
> +	channel = ops->get_channel(pdev);
> +	if (channel < 0)
> +		return channel;
> 
> +	kcs_bmc = kcs_bmc_alloc(&pdev->dev, sizeof(struct aspeed_kcs_bmc),
> channel);
> +	if (!kcs_bmc)
> +		return -ENOMEM;
> +
> +	kcs_bmc->ioreg = ast_kcs_bmc_ioregs[channel - 1];
>  	kcs_bmc->io_inputb = aspeed_kcs_inb;
>  	kcs_bmc->io_outputb = aspeed_kcs_outb;
> 
> +	addr = ops->get_io_address(pdev);
> +	if (addr < 0)
> +		return addr;
> +
> +	aspeed_kcs_set_address(kcs_bmc, addr);
> +
>  	rc = aspeed_kcs_config_irq(kcs_bmc, pdev);
>  	if (rc)
>  		return rc;
> @@ -400,11 +380,21 @@ static int aspeed_kcs_remove(struct
> platform_device *pdev)
>  	return 0;
>  }
> 
> +static const struct aspeed_kcs_of_ops of_v1_ops = {
> +	.get_channel = aspeed_kcs_of_v1_get_channel,
> +	.get_io_address = aspeed_kcs_of_v1_get_io_address, };
> +
> +static const struct aspeed_kcs_of_ops of_v2_ops = {
> +	.get_channel = aspeed_kcs_of_v2_get_channel,
> +	.get_io_address = aspeed_kcs_of_v2_get_io_address, };
> +
>  static const struct of_device_id ast_kcs_bmc_match[] = {
> -	{ .compatible = "aspeed,ast2400-kcs-bmc" },
> -	{ .compatible = "aspeed,ast2500-kcs-bmc" },
> -	{ .compatible = "aspeed,ast2400-kcs-bmc-v2" },
> -	{ .compatible = "aspeed,ast2500-kcs-bmc-v2" },
> +	{ .compatible = "aspeed,ast2400-kcs-bmc", .data = &of_v1_ops },
> +	{ .compatible = "aspeed,ast2500-kcs-bmc", .data = &of_v1_ops },
> +	{ .compatible = "aspeed,ast2400-kcs-bmc-v2", .data = &of_v2_ops },
> +	{ .compatible = "aspeed,ast2500-kcs-bmc-v2", .data = &of_v2_ops },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, ast_kcs_bmc_match);
> --
> 2.27.0



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
