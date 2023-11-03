Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B9A57E0567
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 16:17:11 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyvv2-0001o7-2Q;
	Fri, 03 Nov 2023 15:17:06 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qyvv0-0001o1-PY
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 15:17:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=sJh90tg1VMh/WczXmRufBzSph5hbbZ48DvhVPqA1pjw=; b=X6uTUt34//nT5AqZisiMhNgV85
 9CpzBgDGdzNIJWWqSnHrTfUpzmf3v6kvdSaBzFmx5EOM9slxu/+hlzzQQsCB2KB398eUgQrNI+1gf
 oUROBSSYWPXMNvNUlQ/1sU9IABJP69dZL5NrgzGp/qpM2XJXeZQa29V0KPiv5qubqltI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sJh90tg1VMh/WczXmRufBzSph5hbbZ48DvhVPqA1pjw=; b=mvnzLfMxp5GTZ5En7W7JNE/r7E
 KlRmg21WmGh751/2ItxQWvM+NfP80ghL6k9UYetwzdrFcla53cwXr1gNQHzECDdGDUnVMWS3FI8mT
 kfbxtjp0heuspHrIBa1IiRa1X6tOGW5lFEM+dt6PXfy4jg9XuWNZCX3zTTqXbfNmVaoE=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyvuw-002Ki0-S6 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 15:17:05 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.201])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SMPQW587bz67SFp;
 Fri,  3 Nov 2023 23:13:39 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 3 Nov
 2023 15:16:52 +0000
Date: Fri, 3 Nov 2023 15:16:51 +0000
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <20231103151651.000045ae@Huawei.com>
In-Reply-To: <20231103061522.1268637-6-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-6-andrew@codeconstruct.com.au>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100003.china.huawei.com (7.191.160.210) To
 lhrpeml500005.china.huawei.com (7.191.163.240)
X-CFilter-Loop: Reflected
X-Spam-Score: -2.3 (--)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Fri,
 3 Nov 2023 16:45:17 +1030 Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > Operations such as reading and writing from hardware and updating
 the > events of interest are operations in which the client is interested,
 but > are applied to the device. Strengthen the concept o [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qyvuw-002Ki0-S6
Subject: Re: [Openipmi-developer] [PATCH 05/10] ipmi: kcs_bmc: Define client
 actions in terms of kcs_bmc_client
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
From: Jonathan Cameron via Openipmi-developer
 <openipmi-developer@lists.sourceforge.net>
Reply-To: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
Cc: jk@codeconstruct.com.au, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, minyard@acm.org, aladyshev22@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri,  3 Nov 2023 16:45:17 +1030
Andrew Jeffery <andrew@codeconstruct.com.au> wrote:

> Operations such as reading and writing from hardware and updating the
> events of interest are operations in which the client is interested, but
> are applied to the device. Strengthen the concept of the client in the
> subsystem and clean up some call-sites by translating between the client
> and device types in the core of the KCS subsystem.
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
> ---
>  drivers/char/ipmi/kcs_bmc.c           | 67 ++++++++++++++++++---------
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 50 ++++++++++----------
>  drivers/char/ipmi/kcs_bmc_client.h    | 15 +++---
>  drivers/char/ipmi/kcs_bmc_serio.c     | 10 ++--
>  4 files changed, 81 insertions(+), 61 deletions(-)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc.c b/drivers/char/ipmi/kcs_bmc.c
> index 5a3f199241d2..d70e503041bd 100644
> --- a/drivers/char/ipmi/kcs_bmc.c
> +++ b/drivers/char/ipmi/kcs_bmc.c
> @@ -22,33 +22,53 @@ static LIST_HEAD(kcs_bmc_drivers);
>  
>  /* Consumer data access */
>  
> -u8 kcs_bmc_read_data(struct kcs_bmc_device *kcs_bmc)
> +static void kcs_bmc_client_validate(struct kcs_bmc_client *client)
>  {
> -	return kcs_bmc->ops->io_inputb(kcs_bmc, kcs_bmc->ioreg.idr);
> +	WARN_ONCE(client != READ_ONCE(client->dev->client), "KCS client confusion detected");

Is this intended as runtime validation or to catch bugs?
If just catch bugs then fair enough.

With that question answered based on my somewhat vague understanding of the kcs subsystem.
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>

> +}



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
