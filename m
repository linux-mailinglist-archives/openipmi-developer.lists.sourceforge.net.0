Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id E69D17E04CD
	for <lists+openipmi-developer@lfdr.de>; Fri,  3 Nov 2023 15:37:16 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qyvIM-0004dM-K5;
	Fri, 03 Nov 2023 14:37:11 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <jonathan.cameron@huawei.com>) id 1qyvIK-0004dF-TH
 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:37:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=Content-Transfer-Encoding:Content-Type:MIME-Version
 :References:In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=nygJYSPY57ZvEm2XVRGfpgeSQOsgX1Bx874j29XFRh8=; b=FGCPyT3QKK1HzxL36LnOTxJRfh
 NVNbhcyQzbIdvYTw1EPMv/j9W6rXOjBi+C5LbCtDd1Io55DEOZdFh6XKJw8llwPVnegpWJLYUXk4D
 HD/IPg92yQa2/tcEqGrU0jKFW9jD3hxv/CdLZQd/IE0Du4xq5ohcuWtp5WO5n9xOfMXo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=Content-Transfer-Encoding:Content-Type:MIME-Version:References:
 In-Reply-To:Message-ID:Subject:CC:To:From:Date:Sender:Reply-To:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=nygJYSPY57ZvEm2XVRGfpgeSQOsgX1Bx874j29XFRh8=; b=GS7/uGNbkiumXgMosxc7bIhDJH
 7adTfhRxz424rTACFsJS5tfmXgTf/2yihqwWxDiHlA/ELlCGvTSMTczyh6EQukhzgubcmLsqEvaSS
 teXHM1o/9d1VERLB+NL1mRRXhqLvDADoHKqnX3OaXoZJOL5fURr4kUVgdplCeOktx+8c=;
Received: from frasgout.his.huawei.com ([185.176.79.56])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.95)
 id 1qyvIJ-0001Sh-V7 for openipmi-developer@lists.sourceforge.net;
 Fri, 03 Nov 2023 14:37:08 +0000
Received: from lhrpeml500005.china.huawei.com (unknown [172.18.147.200])
 by frasgout.his.huawei.com (SkyGuard) with ESMTP id 4SMNWR15lTz67JwR;
 Fri,  3 Nov 2023 22:32:51 +0800 (CST)
Received: from localhost (10.202.227.76) by lhrpeml500005.china.huawei.com
 (7.191.163.240) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.2507.31; Fri, 3 Nov
 2023 14:36:57 +0000
Date: Fri, 3 Nov 2023 14:36:57 +0000
To: Andrew Jeffery <andrew@codeconstruct.com.au>
Message-ID: <20231103143657.0000046f@Huawei.com>
In-Reply-To: <20231103061522.1268637-3-andrew@codeconstruct.com.au>
References: <20231103061522.1268637-1-andrew@codeconstruct.com.au>
 <20231103061522.1268637-3-andrew@codeconstruct.com.au>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 4.1.0 (GTK 3.24.33; x86_64-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.227.76]
X-ClientProxiedBy: lhrpeml100005.china.huawei.com (7.191.160.25) To
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
 3 Nov 2023 16:45:14 +1030 Andrew Jeffery <andrew@codeconstruct.com.au>
 wrote: > struct kcs_bmc_device defines a spinlock member but the header in
 which > it is defined failed to include the spinlock header. In the spirit
 of > include-what-you-use, do what's necessary. > > Signe [...] 
 Content analysis details:   (-2.3 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.79.56 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H5      RBL: Excellent reputation (+5)
 [185.176.79.56 listed in wl.mailspike.net]
 -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-Headers-End: 1qyvIJ-0001Sh-V7
Subject: Re: [Openipmi-developer] [PATCH 02/10] ipmi: kcs_bmc: Include
 spinlock.h
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

On Fri,  3 Nov 2023 16:45:14 +1030
Andrew Jeffery <andrew@codeconstruct.com.au> wrote:

> struct kcs_bmc_device defines a spinlock member but the header in which
> it is defined failed to include the spinlock header. In the spirit of
> include-what-you-use, do what's necessary.
> 
> Signed-off-by: Andrew Jeffery <andrew@codeconstruct.com.au>
This is fine, but whilst checking it I noticed there is no
forwards def of struct device or appropriate include.

Still that's unrelated
Reviewed-by: Jonathan Cameron <Jonathan.Cameron@huawei.com>


> ---
>  drivers/char/ipmi/kcs_bmc.h | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/char/ipmi/kcs_bmc.h b/drivers/char/ipmi/kcs_bmc.h
> index fa408b802c79..880d835fb90c 100644
> --- a/drivers/char/ipmi/kcs_bmc.h
> +++ b/drivers/char/ipmi/kcs_bmc.h
> @@ -7,6 +7,7 @@
>  #define __KCS_BMC_H__
>  
>  #include <linux/list.h>
> +#include <linux/spinlock.h>
>  
>  #define KCS_BMC_EVENT_TYPE_OBE	BIT(0)
>  #define KCS_BMC_EVENT_TYPE_IBF	BIT(1)



_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
