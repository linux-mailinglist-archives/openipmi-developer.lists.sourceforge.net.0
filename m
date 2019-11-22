Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 91F3510795B
	for <lists+openipmi-developer@lfdr.de>; Fri, 22 Nov 2019 21:17:23 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1iYFMn-00078k-5L; Fri, 22 Nov 2019 20:17:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <Asmaa@mellanox.com>) id 1iYFMg-00078L-GL
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Nov 2019 20:17:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=MIME-Version:Content-Transfer-Encoding:Content-Type
 :In-Reply-To:References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=CMVTJs3gA21QbjgXI/0Pv/F3ftSB8rP6iacsqtlb4GU=; b=kAsB3tiYxR6MQ9OkfiQdVYjVNK
 Q5n6grJLWv+VV3C5tXy/KuvAcqAQ8O0rs+Td6/PGEvhnH4LAv13GjqpJ2C+YiXMb3Ar43meH0OYrF
 +1y8Rief2DaQwyrvlz0jrZskgxpQf6YEpOvBCzpvrZaT2MHC2H9eY4JOkZzEC4djvtcI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=MIME-Version:Content-Transfer-Encoding:Content-Type:In-Reply-To:
 References:Message-ID:Date:Subject:CC:To:From:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=CMVTJs3gA21QbjgXI/0Pv/F3ftSB8rP6iacsqtlb4GU=; b=iQ4KLuuQQDEyXU9VImRo5EQZWo
 GlIivra6EkiMqVxGDwFXQf8XNVUQWC0RAkH4jdjUPIr9Iz2qdzecx+4CAhZlAwUJ16cLJlXh7ZiDg
 Hw6tVPgGVrOKbzPq+S/jn36DTYNvke6AZef/PFjqP6H3ivqvmjNVx6pJ+zIzMjjPZCas=;
Received: from mail-eopbgr140044.outbound.protection.outlook.com
 ([40.107.14.44] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.92.2)
 id 1iYFMZ-000tWX-V0
 for openipmi-developer@lists.sourceforge.net; Fri, 22 Nov 2019 20:17:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Uwwx2VkhgBTHn8OpB9M/vWBRo/KuUdsGedAtVKNNkG1afnssY56/MYXBjciKHZF78BwQTRmrvmVMvt1tfpUeSs6xcLEs2uxb+zlN0BQMW7iVfLFUn1smY3E/SK+c0gGH/p1SDSHEo72pLce5YpoFi25vfgBrPitsaogC+iPLsjz5WkQjB2aEgBHk0/on1KjlD+qtu7cPaNB7ZKHE24g+EfpZT6A/7LQxV5waDGKUJ6qwLvT7vTdXSwp24K5cWEDDAXNIg7t2jvFOCFtla8VzKyjJ8mVOXjMAxVsE1HgaVi5mdgCVFPi/5T5SIkrPl7CQpsONqsv47scpnplweB0geg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMVTJs3gA21QbjgXI/0Pv/F3ftSB8rP6iacsqtlb4GU=;
 b=P2kOSkw5cIgZDTgfeILLoW8B3Z7cI8+dpGNRChHTJLPawL/DbJHbNVrFrdlk7e4K/Ygl4Hh+YlkukSXwP4xrh+HtqLcW0hC3PEnwaDo6hfBwGFBMHK7zJhpbfuDQhSJPZw4egR+gX8jlEqZj16mmI/r6Bo43SfsX2wlWzHpeYWk/HEPDRUWl7SWdtmYb6VYn2ljcjhrmKbQlKOrDfPvF4n6fqvdpoz5+pGwSTdgI0woHPB1KiuA0xK8DvlXrQGy/gdYNJRGdRzDL+Qti93moQAmkjG6/xhuFfJOEzUDn3vUf2TXD3yzNqcW009xj47d7ibQ2sR/typMdymGRpqbxzg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=mellanox.com; dmarc=pass action=none header.from=mellanox.com;
 dkim=pass header.d=mellanox.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=Mellanox.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=CMVTJs3gA21QbjgXI/0Pv/F3ftSB8rP6iacsqtlb4GU=;
 b=E7pvN+Esz3xmvUNC0ZZAhIoii7zM/uxSadML1Cg6Bjq1MH7uGlzE8RxOHUPRm64596g93nlrXAs/2ewgXAju6jsIQT6DNLS9Omdg1axFNfUAtXFQ9VvUnl77lqb1+mcKtsQf8qYC5vwjkgFlCu8HI9I/T/gNjLNQvROMSwq6WE0=
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com (10.172.225.17) by
 DB6PR0501MB2549.eurprd05.prod.outlook.com (10.168.77.14) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.16; Fri, 22 Nov 2019 19:43:06 +0000
Received: from DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1]) by DB6PR0501MB2712.eurprd05.prod.outlook.com
 ([fe80::99be:5f3a:9871:ecd1%12]) with mapi id 15.20.2474.021; Fri, 22 Nov
 2019 19:43:06 +0000
From: Asmaa Mnebhi <Asmaa@mellanox.com>
To: "minyard@acm.org" <minyard@acm.org>, Luc Van Oostenryck
 <luc.vanoostenryck@gmail.com>
Thread-Topic: [PATCH] ipmi: fix ipmb_poll()'s return type
Thread-Index: AQHVoWy9dzHT4ezyPkGsfMiFXFnBaaeXlxkg
Date: Fri, 22 Nov 2019 19:43:06 +0000
Message-ID: <DB6PR0501MB27127F64884DEA1AF3E4620ADA490@DB6PR0501MB2712.eurprd05.prod.outlook.com>
References: <20191120000741.30657-1-luc.vanoostenryck@gmail.com>
 <20191122194041.GB3527@minyard.net>
In-Reply-To: <20191122194041.GB3527@minyard.net>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Asmaa@mellanox.com; 
x-originating-ip: [216.156.69.42]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 0c59618a-b592-4395-ba42-08d76f843206
x-ms-traffictypediagnostic: DB6PR0501MB2549:
x-microsoft-antispam-prvs: <DB6PR0501MB2549E74BEC90F4DC6370A07ADA490@DB6PR0501MB2549.eurprd05.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 02296943FF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(376002)(39860400002)(366004)(136003)(346002)(396003)(13464003)(199004)(189003)(102836004)(186003)(316002)(6506007)(53546011)(25786009)(110136005)(7696005)(54906003)(52536014)(71200400001)(11346002)(446003)(5660300002)(80792005)(71190400001)(256004)(26005)(76176011)(4326008)(55016002)(8676002)(14444005)(7736002)(305945005)(9686003)(66066001)(2906002)(6246003)(74316002)(86362001)(229853002)(81166006)(81156014)(76116006)(2501003)(14454004)(66476007)(8936002)(64756008)(66556008)(478600001)(3846002)(66946007)(66446008)(99286004)(6116002)(33656002)(6436002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB6PR0501MB2549;
 H:DB6PR0501MB2712.eurprd05.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: mellanox.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Bhy+7VwUzGSo5o1zKncK8uNJ8ShwHq5LD/lYmNqyTByxhVtrTecMrPebP1u3zSa+N8wL7zFyi+rrZi61bKASeCmCozaWTCdIKt9ETOFHnWjmXw8gTlu2i5MloqhEAZVFUo03YS9sNV7K4WCo6yCNXKnbPUCcwo30pnHTAWULa3wIvlZtb4FC5oHsyFfz+6K7uumMvmUDk0gY2tbPhQbFCw8GIWY5iQL0kG0y3tcLgq/vK8Q9zB93/RGELjYSVPh3gUFWvjtWyGTYTEzjkFC0eUO+7YnU5gC57ngvQ9dsMlZAqzFKBs53sb4HUcQV8Kv18GT1heVDqSprFo2CJjtGrulLnCWY4NJ/hSXa2n3yXxsQkAF/FcP0g4Q6RacKFXjtL9jpRMPEHLv9/SVxmpx65+GryCbygttHKrJXD/6GyrP/5z3EnQPuH7w0GkVgr4nk
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: Mellanox.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0c59618a-b592-4395-ba42-08d76f843206
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Nov 2019 19:43:06.0662 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: a652971c-7d2e-4d9b-a6a4-d149256f461b
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: ijQ+HftZDk4dExIDnqJ1DxOE37ZENIqjpS5Xo8N5PLNEDJoiYRktftqOf/wOcj6UxJqim8Ka/ykR/PmopkGxGQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0501MB2549
X-Spam-Score: -0.1 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [40.107.14.44 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
 domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
X-Headers-End: 1iYFMZ-000tWX-V0
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix ipmb_poll()'s return type
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "openipmi-developer@lists.sourceforge.net"
 <openipmi-developer@lists.sourceforge.net>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Reviewed-by: Asmaa Mnebhi <asmaa@mellanox.com>

-----Original Message-----
From: Corey Minyard <tcminyard@gmail.com> On Behalf Of Corey Minyard
Sent: Friday, November 22, 2019 2:41 PM
To: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Cc: linux-kernel@vger.kernel.org; openipmi-developer@lists.sourceforge.net; Greg Kroah-Hartman <gregkh@linuxfoundation.org>; Asmaa Mnebhi <Asmaa@mellanox.com>
Subject: Re: [PATCH] ipmi: fix ipmb_poll()'s return type

On Wed, Nov 20, 2019 at 01:07:41AM +0100, Luc Van Oostenryck wrote:
> ipmb_poll() is defined as returning 'unsigned int' but the .poll 
> method is declared as returning '__poll_t', a bitwise type.
> 
> Fix this by using the proper return type and using the EPOLL constants 
> instead of the POLL ones, as required for __poll_t.

Copying the author for comment, but this looks ok with me.

-corey

> 
> CC: Corey Minyard <minyard@acm.org>
> CC: openipmi-developer@lists.sourceforge.net
> CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
> ---
>  drivers/char/ipmi/ipmb_dev_int.c | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmb_dev_int.c 
> b/drivers/char/ipmi/ipmb_dev_int.c
> index 285e0b8f9a97..2ea51147c3e8 100644
> --- a/drivers/char/ipmi/ipmb_dev_int.c
> +++ b/drivers/char/ipmi/ipmb_dev_int.c
> @@ -154,16 +154,16 @@ static ssize_t ipmb_write(struct file *file, const char __user *buf,
>  	return ret ? : count;
>  }
>  
> -static unsigned int ipmb_poll(struct file *file, poll_table *wait)
> +static __poll_t ipmb_poll(struct file *file, poll_table *wait)
>  {
>  	struct ipmb_dev *ipmb_dev = to_ipmb_dev(file);
> -	unsigned int mask = POLLOUT;
> +	__poll_t mask = EPOLLOUT;
>  
>  	mutex_lock(&ipmb_dev->file_mutex);
>  	poll_wait(file, &ipmb_dev->wait_queue, wait);
>  
>  	if (atomic_read(&ipmb_dev->request_queue_len))
> -		mask |= POLLIN;
> +		mask |= EPOLLIN;
>  	mutex_unlock(&ipmb_dev->file_mutex);
>  
>  	return mask;
> --
> 2.24.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
