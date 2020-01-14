Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B09613B2EF
	for <lists+openipmi-developer@lfdr.de>; Tue, 14 Jan 2020 20:23:51 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1irRn3-0001Ji-Em; Tue, 14 Jan 2020 19:23:49 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1irRn2-0001Jb-Mi
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Jan 2020 19:23:48 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JNSSkFgpoKbc2ONZH1qRFjTrq2JGXe5sX/UD6hO+1w8=; b=ECwNQZyTvbtrC2v+TK6pbfOA4R
 suvlnIWGbx5PRKFHqLBWdnukkPK+ZhwaQh2rMlVd/SvSrE7fV9OLHQJ1tMOB93fXI4ZSPbdapc2kp
 JyNRaUAKidH/tTuDjDg5p/8NdooQq2TojGf34eq1nALqddCmUW56fYwPeGRycKGrq4Hg=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=JNSSkFgpoKbc2ONZH1qRFjTrq2JGXe5sX/UD6hO+1w8=; b=GOyPDbuOqAXsZM3GDc9CiuJ7lC
 aZw2Ocv8Zx5vtAcpA6+oKyGzWNl3vahInA2cfEBlt3Ce7PssKQlqzMrIE7PrCcMNxB3emVRLpWQv9
 MYGlfkljPTj5g1iWRoWeDDhv4UIDJ4TldPHhNhNtF1MTcWETDhjX2mMKGIYU3iz+lrXk=;
Received: from mail-eopbgr30080.outbound.protection.outlook.com ([40.107.3.80]
 helo=EUR03-AM5-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1irRmz-005qOa-Ji
 for openipmi-developer@lists.sourceforge.net; Tue, 14 Jan 2020 19:23:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=IRZTThC6Q3XNurCqbD31vCRJ4LibatzkdFguWnikcvr26f+5yVUS5hwSyfPLUUx9W+TusNU4whoUNAYp58B2qtsyMV/Yx4ZMWmLAxOqzsIT0j0ejmFONtddoIG5YG9k9+6BKR1tnyqAT3HX29XL++uNaih+O19Ml3NATmPkza2i9k/pU+8Yn4cR47PTdZ+nYJP+uN/n3/GzvyNnTLRHmsheY1Op+1K6brdiHYfAfGxFsfKZXLE2knPeXXz3DTVDbs6LLDtxHMfVttBmZpjZAjrtf0nUSPiQJU3m4f+arQvRrSiAR03UPBxYT+vqI3b2RdAwjFz0Me6/cWsIN4gAFGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JNSSkFgpoKbc2ONZH1qRFjTrq2JGXe5sX/UD6hO+1w8=;
 b=VgiOzcU9HXRwwtA/3+PYbqWESnPH1JlGbMxn84aX0rfG1HFe6OWXx7sY9Rt1fZFnS1mxtpqJkyllBM/Btrbz4igvMfnWLHnO7mzjkK5riUj2MEhNvJ/blB5kjxEEYrRMeJGpTi4J9mtFfg1e/zWAXA7qdu6KjnRtX/RuJgx5WERpNvMM/FOgdUcIokjJ58yw82Z4rNID+NPsh3s+w9bhKaF5HIrfC2xfGNbwcfBOEdCy7KzM6c54Gz7mG6kHaF6D7TGjwLKDo3nF/UhBGCUgI/9H9hMQm3YLOY7yEurEOz49kR2K69dZheosICDDeHbwpECBaUdvGfH8daAM8wWIbg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JNSSkFgpoKbc2ONZH1qRFjTrq2JGXe5sX/UD6hO+1w8=;
 b=sY55AYuskC+VPZbJLHAeLjwHrOEdyfN7pi/GdnchJneyO+nTG33FlKM29pX7fXHQpV9Lw/vSnm4EBwDADdMkeqOzM7HC0IYo7pGqgYnuKUjAQzRS76+vDJeKnVV78Fm5qopAr7KbXWiyiio9aZt+lOYc9YL/NRBQpUyAB1VNVKw=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2727.eurprd05.prod.outlook.com (10.172.225.21) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2623.10; Tue, 14 Jan 2020 15:50:22 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::9477:3768:6a86:a578]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::9477:3768:6a86:a578%10]) with mapi id 15.20.2623.017; Tue, 14 Jan
 2020 15:50:22 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: Colin King <colin.king@canonical.com>, Corey Minyard
 <cminyard@mvista.com>, Arnd Bergmann <arnd@arndb.de>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Vadim Pasternak <vadimp@mellanox.com>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>
Thread-Topic: [PATCH][next] drivers: ipmi: fix off-by-one bounds check that
 leads to a out-of-bounds write
Thread-Index: AQHVyuiVmzgaQueLj0y17rR9L9rt1afqTq+w
Date: Tue, 14 Jan 2020 15:50:22 +0000
Message-ID: <DB6PR0501MB2712BEBCF959566EAB063769DA340@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20200114144031.358003-1-colin.king@canonical.com>
In-Reply-To: <20200114144031.358003-1-colin.king@canonical.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: c856f1c5-b437-4680-e249-08d799097717
x-ms-traffictypediagnostic: DB6PR0501MB2727:|DB6PR0501MB2727:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0501MB2727751E677732E186094C82DA340@DB6PR0501MB2727.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2887;
x-forefront-prvs: 028256169F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(396003)(39860400002)(366004)(346002)(136003)(189003)(199004)(86362001)(33656002)(26005)(52536014)(9686003)(55016002)(478600001)(4326008)(53546011)(66946007)(8676002)(110136005)(64756008)(66476007)(66556008)(316002)(66446008)(81156014)(81166006)(186003)(6506007)(76116006)(8936002)(54906003)(2906002)(5660300002)(7696005)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2727;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 3KFBMJu6B9u/oMNtlgYdZKyt3VFXf4wosQWC3LmA+UPQk4rENeuQL7//CW+gYifoNSVepHc/ENCnrWCqzEiptYhR4N0N0rfDWFM0y3LYSH77ppvm1H0p91iKsKw9qMXeL4bz6bqBASI0+IGjI8321toH4+R8tSvgjoagtHJr2rcdbDgqte7myqUXMWKUfcC1SRJ2ytqMwQT0tto2snzrhAZ45SHtM47aQFGxYLnnyM7wlywIQx0QJ6nByh1jTmmmSPRjIcKnKdMrxV2kYkBMCywfeZjnT4zS+UbwYMv2OBmgdWyogfKafQuX4DRM8Vcj+If2aZfDqUGN5uaGztCgxbmp3Z1KE4o1/FmiKw0CASAG0A/RfBKddcxmMbfLSESTQfeg2IMwCK+wpMJdVL2Dn9Rpv4n6BwWf+KE9EO4bWLkeU4oDu9XTVxdpEpGGfW0h
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c856f1c5-b437-4680-e249-08d799097717
X-MS-Exchange-CrossTenant-originalarrivaltime: 14 Jan 2020 15:50:22.6834 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 0ZInj7s8Oro9skoyIuM2w/Oztcntc5stBsAD5sWPKRbHsYfxz8RGlnKjHg1Ygdfk1uIo1YK7HU4l8GM9xojOOQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2727
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: mvista.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.3.80 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1irRmz-005qOa-Ji
Subject: Re: [Openipmi-developer] [PATCH][next] drivers: ipmi: fix
 off-by-one bounds check that leads to a out-of-bounds write
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
Cc: "kernel-janitors@vger.kernel.org" <kernel-janitors@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Reviewed-by: Asmaa Mnebhi <asmaa@mellanox.com>

-----Original Message-----
From: Colin King <colin.king@canonical.com> 
Sent: Tuesday, January 14, 2020 9:41 AM
To: Corey Minyard <cminyard@mvista.com>; Arnd Bergmann <arnd@arndb.de>; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Vadim Pasternak <vadimp@mellanox.com>; Asmaa Mnebhi <Asmaa@mellanox.com>; openipmi-developer@lists.sourceforge.net
Cc: kernel-janitors@vger.kernel.org; linux-kernel@vger.kernel.org
Subject: [PATCH][next] drivers: ipmi: fix off-by-one bounds check that leads to a out-of-bounds write

From: Colin Ian King <colin.king@canonical.com>

The end of buffer check is off-by-one since the check is against an index that is pre-incremented before a store to buf[]. Fix this adjusting the bounds check appropriately.

Addresses-Coverity: ("Out-of-bounds write")
Fixes: 51bd6f291583 ("Add support for IPMB driver")
Signed-off-by: Colin Ian King <colin.king@canonical.com>
---
 drivers/char/ipmi/ipmb_dev_int.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/char/ipmi/ipmb_dev_int.c b/drivers/char/ipmi/ipmb_dev_int.c
index 9fdae83e59e0..382b28f1cf2f 100644
--- a/drivers/char/ipmi/ipmb_dev_int.c
+++ b/drivers/char/ipmi/ipmb_dev_int.c
@@ -279,7 +279,7 @@ static int ipmb_slave_cb(struct i2c_client *client,
 		break;
 
 	case I2C_SLAVE_WRITE_RECEIVED:
-		if (ipmb_dev->msg_idx >= sizeof(struct ipmb_msg))
+		if (ipmb_dev->msg_idx >= sizeof(struct ipmb_msg) - 1)
 			break;
 
 		buf[++ipmb_dev->msg_idx] = *val;
--
2.24.0


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
