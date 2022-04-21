Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 105A8509F0D
	for <lists+openipmi-developer@lfdr.de>; Thu, 21 Apr 2022 13:53:51 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1nhVNa-0007k5-J7; Thu, 21 Apr 2022 11:53:45 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1nhVNZ-0007js-3e
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 11:53:44 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=PT4LXQBfLiBOJRTfBJYUYM3WIFjfmxtBkNM0mqiYix8=; b=kXsRqKncLJXr7XaQV6iGiJEMJo
 LbsJyzEFxe9ZseoXOY/FFVoi39VUE8W7scpoRRMSBQniVEOuDbR4H7pSrew20q+pZMsFBPAMDs+x2
 3PFfMksfLCqviZ53NLbQrYO2tNAF01oFfJCc1F4L9eYuvoR52/BwR3JoA3XdcaLnHkVc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=PT4LXQBfLiBOJRTfBJYUYM3WIFjfmxtBkNM0mqiYix8=; b=EVdwXHO/hQSJtrpdw3CFzuOiDV
 fq7lhkUFDQT0AJWfFR7C4/Pf2VR1aNXCnifFQcsI2MXJiJqX5zR8mSJZDY3wPqkyo4C53b9/VM7bG
 io7hblQ5Ful+DdB2OR9eAbp6q43Kw5nLs/QTlR87S4qh5pLdWtBSLtrxvXwg8eYjWz7M=;
Received: from mail-qt1-f179.google.com ([209.85.160.179])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.94.2)
 id 1nhVNV-005YKg-V1
 for openipmi-developer@lists.sourceforge.net; Thu, 21 Apr 2022 11:53:44 +0000
Received: by mail-qt1-f179.google.com with SMTP id hh4so3010969qtb.10
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 21 Apr 2022 04:53:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=PT4LXQBfLiBOJRTfBJYUYM3WIFjfmxtBkNM0mqiYix8=;
 b=YzRMCim8hi+BV5bLrRa6UuBuCUpXby6fe49piTZ/rxGtlpkUfvJ355BuHU/hHqBXLk
 FpuyFzc5G5cST+1cCxTyFWGqOkXkuO5w6V8MI/itLH1es3N0fsKi/hAs++h6lGPdC1HL
 9i6BJJ5f9BGT7ZovIAjdIVbT1qORO6dM67dpEmUaSvOOi+c2NKQ8doUJ9sAyB+MKMWnS
 cgqUYMKYLy30WdsI+NbgW29mbNRY4YQrqW9gVL4uPoJRjMk/Xsg+H3x4mKbrIWb8wvBT
 xOH2+xs7SMOShskwzd3Ev1bIXou/gY7DK7CU3chZGp8BO/aQPzJEGJomE4sQUzrOAK/k
 mNFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=PT4LXQBfLiBOJRTfBJYUYM3WIFjfmxtBkNM0mqiYix8=;
 b=k19cYA6S6A8TUJH4Clr7lsbdsA0rqEXz+qdCqP29XzCpnQqy222ZbRz7knPnOK4dKr
 xLVlSk3s8Zm+a7MCLcUlf2PxVswD4bweUP327PGQgg0Yh+kclF2PNHHFIkySVSe4Jbcn
 BlvbjfCIe3DrzNr2AGZ55CdaTDMwOSyUsRT+ksdZ+FFkKDsevRVfgqELWIqpsE3pCYac
 oGBcGo31DYBftqBJQIF8MXlZ3XAyudSm2p0JQySyQWbNBGyoPOb3MHqQn4+Ac/4m7ckM
 MRKMdLLCjA8AoBp5mQXE9D5roMOKHBzPZONpxWeJc59tIPKTCWq1OkRdVqhhTpy11DDi
 JegA==
X-Gm-Message-State: AOAM530pHS/VPrU4kEwGiNx3eqs3XdSeRctEe/giNYnte+qpfTRCU6J/
 ovT0FbisyxOpctWY66H33g==
X-Google-Smtp-Source: ABdhPJyD1deq/S91ZjUCxXT/nCjxV0i6aTWnkq7PKitz0Nn3z+sEmfKUTSRdqkNno0xncz1o0dMLhA==
X-Received: by 2002:ac8:7d90:0:b0:2f3:4446:303f with SMTP id
 c16-20020ac87d90000000b002f34446303fmr4027883qtd.218.1650542015460; 
 Thu, 21 Apr 2022 04:53:35 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 k2-20020a37ba02000000b0067dc1b0104asm2780044qkf.124.2022.04.21.04.53.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Apr 2022 04:53:35 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:a578:422:b82d:51be])
 by serve.minyard.net (Postfix) with ESMTPSA id 18B6B1800BB;
 Thu, 21 Apr 2022 11:53:34 +0000 (UTC)
Date: Thu, 21 Apr 2022 06:53:32 -0500
From: Corey Minyard <minyard@acm.org>
To: Wei Yongjun <weiyongjun1@huawei.com>
Message-ID: <20220421115332.GZ426325@minyard.net>
References: <20220421100835.1942677-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220421100835.1942677-1-weiyongjun1@huawei.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Apr 21, 2022 at 10:08:35AM +0000, Wei Yongjun wrote:
 > KASAN report null-ptr-deref as follows: > > KASAN: null-ptr-deref in range
 [0x0000000000000008-0x000000000000000f] > Hardware name: QEMU [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.160.179 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.160.179 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1nhVNV-005YKg-V1
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ipmi_ipmb: Fix
 null-ptr-deref in ipmi_unregister_smi()
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
Reply-To: minyard@acm.org
Cc: Hulk Robot <hulkci@huawei.com>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Apr 21, 2022 at 10:08:35AM +0000, Wei Yongjun wrote:
> KASAN report null-ptr-deref as follows:
> 
> KASAN: null-ptr-deref in range [0x0000000000000008-0x000000000000000f]
> Hardware name: QEMU Standard PC (i440FX + PIIX, 1996), BIOS 1.13.0-1ubuntu1.1 04/01/2014
> RIP: 0010:ipmi_unregister_smi+0x7d/0xd50 drivers/char/ipmi/ipmi_msghandler.c:3680
> Call Trace:
>  ipmi_ipmb_remove+0x138/0x1a0 drivers/char/ipmi/ipmi_ipmb.c:443
>  ipmi_ipmb_probe+0x409/0xda1 drivers/char/ipmi/ipmi_ipmb.c:548
>  i2c_device_probe+0x959/0xac0 drivers/i2c/i2c-core-base.c:563
>  really_probe+0x3f3/0xa70 drivers/base/dd.c:541
> 
> In ipmi_ipmb_probe(), 'iidev->intf' is not set before ipmi_register_smi() success.
> And in the error handling case, ipmi_ipmb_remove() is called to release resources,
> ipmi_unregister_smi() is called without check 'iidev->intf', this will cause KASAN
> null-ptr-deref issue.
> 
> Fix by adding NULL check prior to calling ipmi_unregister_smi().

This bug is valid, but I'd like to fix it another way.  General kernel
style is to allow NULL to be passed into these sorts of things and just
return if it's NULL.  So I've fixed it that way.  Fix is in linux-next.

Thanks,

-corey

> 
> Fixes: 57c9e3c9a374 ("ipmi:ipmi_ipmb: Unregister the SMI on remove")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_ipmb.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ipmb.c b/drivers/char/ipmi/ipmi_ipmb.c
> index b81b862532fb..ea8fdb5ecfc9 100644
> --- a/drivers/char/ipmi/ipmi_ipmb.c
> +++ b/drivers/char/ipmi/ipmi_ipmb.c
> @@ -437,7 +437,8 @@ static int ipmi_ipmb_remove(struct i2c_client *client)
>  	iidev->client = NULL;
>  	ipmi_ipmb_stop_thread(iidev);
>  
> -	ipmi_unregister_smi(iidev->intf);
> +	if (iidev->intf)
> +		ipmi_unregister_smi(iidev->intf);
>  
>  	return 0;
>  }
> -- 
> 2.25.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
