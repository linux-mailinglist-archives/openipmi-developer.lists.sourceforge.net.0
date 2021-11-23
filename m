Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 9653B45A30C
	for <lists+openipmi-developer@lfdr.de>; Tue, 23 Nov 2021 13:45:32 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1mpVAu-0008EW-EL; Tue, 23 Nov 2021 12:45:28 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1mpVAt-0008EQ-BL
 for openipmi-developer@lists.sourceforge.net; Tue, 23 Nov 2021 12:45:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=pj5pRezhhNkyiaStdHERODlX0WAKuYd0htVQrRQ/a9E=; b=BmSr57SPno1gqFXyWl1EyEk/4E
 RfPGu0fCkkxhhR+aX+xdu32KuDb85s+1ze1t/ePnI7LHiP8B0DmVDXX5dKGDtezMkxloAXqmHxtYp
 AZH4Jpj6po6Tne87Bua5Dse3lRBh6sD5VxDzzGngxENhwMIry/LwAV9v2GC0YKoBPdGI=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=pj5pRezhhNkyiaStdHERODlX0WAKuYd0htVQrRQ/a9E=; b=IDqyaD8ZWWt9biwTqEb6Va61mg
 Cl6GFeyp8BzkUvmc31K1rr7oZ4h9LewcXRXrQZHYUGnPMtTUVJKsFFGtdmyOzEHl+awJp2vRVu7tQ
 nXQfGjuIciMADdI6nSFpBz9lsyx50rUm7jjmO3afjgvazHOGotauoLrUBBlhmUKklq54=;
Received: from mail-qk1-f178.google.com ([209.85.222.178])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1mpVAo-0006Gv-HQ
 for openipmi-developer@lists.sourceforge.net; Tue, 23 Nov 2021 12:45:27 +0000
Received: by mail-qk1-f178.google.com with SMTP id b67so8225460qkg.6
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 23 Nov 2021 04:45:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=pj5pRezhhNkyiaStdHERODlX0WAKuYd0htVQrRQ/a9E=;
 b=bwslQKsHykLwNeFyH6OrDRROoo+i6rJx+M3TgFUyqHOkVrmNwRM9MDsb9ECnMaIx2W
 mI+cmFZD9vUTiGcgxu4kYu7LXySu1iDm/gzFgC5VTXKjeVDxER13plbNpFWi3xrWUAQP
 80Xw4ZpYHRImQymTC2XC2KP4AftK/OQoTo49vU8xmOBOVukERvGbi3/fKpn9g0taGn5n
 sqdCmdxAvSYfR+EAJ2UJfH26lzFrFkooE+l4QVCqwQMnlBY/rP+Rx+IgPro5vPCiPlFG
 Ef1d2oALiKlz0akGZME7gERGfp96FjAH5RmvOJpRM2j3D5AellHTbcWQSqQvQHibJjjp
 ShYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=pj5pRezhhNkyiaStdHERODlX0WAKuYd0htVQrRQ/a9E=;
 b=kkkrYNxJKfl7wk9t33wOEyPpsj+GTC59pPGm6zIJSHsifCLHFJiVzNsOLcoxPwxxs3
 vxb6ZYiO03phzCncYtiy5ruJxQ1x2IRA2g7kQP0eHxkd0b6oOxpMF0SXu33i3Rnl+saS
 reVYgEAhpzVPKnTpYAXVG9nu9cwagN3zcmL8yuIc9fA3Yo2k1bUVVrI06LCKuMtZaVTo
 QAuE8DzzlHcZVsu9s2xtcMG+FpuFcFkSew6agKtNbAIHdBWeB7YStQ/kotN6wFlWs216
 Ro/is8P2moiFz21WYwglpbRzwlgIIPY+OEHEvujoLR88l8Oswv5u9eA+T7GApEgG9u38
 vpdA==
X-Gm-Message-State: AOAM533ELjHvVPnYUD1/wF1L5fH29AKt0mmsQUbGda/Cx/YylYOp2g/P
 1Y4BcpCtrS4RsBLtE0kvkw==
X-Google-Smtp-Source: ABdhPJy+c6Ab9P7urxQO20LuHJLgrItcL/xdDnpqrruO2jxZKRJAwbt2rUjnx//m0XoH9S28ZYFwZA==
X-Received: by 2002:a05:620a:3193:: with SMTP id
 bi19mr4353490qkb.521.1637671516482; 
 Tue, 23 Nov 2021 04:45:16 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id bk25sm5988852qkb.13.2021.11.23.04.45.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 23 Nov 2021 04:45:16 -0800 (PST)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:30e0:13f:84cd:1650])
 by serve.minyard.net (Postfix) with ESMTPSA id 3E85B1800BA;
 Tue, 23 Nov 2021 12:45:15 +0000 (UTC)
Date: Tue, 23 Nov 2021 06:45:14 -0600
From: Corey Minyard <minyard@acm.org>
To: Wei Yongjun <weiyongjun1@huawei.com>
Message-ID: <20211123124514.GT15676@minyard.net>
References: <20211123083618.2366808-1-weiyongjun1@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211123083618.2366808-1-weiyongjun1@huawei.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 23, 2021 at 08:36:18AM +0000, Wei Yongjun wrote:
 > The sparse tool complains as follows: > >
 drivers/char/ipmi/ipmi_msghandler.c:194:25:
 warning: > symbol 'remove_work_wq' was not declared [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.178 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.178 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1mpVAo-0006Gv-HQ
Subject: Re: [Openipmi-developer] [PATCH -next] ipmi: msghandler: Make
 symbol 'remove_work_wq' static
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
 kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 23, 2021 at 08:36:18AM +0000, Wei Yongjun wrote:
> The sparse tool complains as follows:
> 
> drivers/char/ipmi/ipmi_msghandler.c:194:25: warning:
>  symbol 'remove_work_wq' was not declared. Should it be static?
> 
> This symbol is not used outside of ipmi_msghandler.c, so
> marks it static.

Thanks, I should have noticed this.

-corey

> 
> Fixes: 1d49eb91e86e ("ipmi: Move remove_work to dedicated workqueue")
> Reported-by: Hulk Robot <hulkci@huawei.com>
> Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 1ade72bfae0f..a2ec0171363a 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -191,7 +191,7 @@ struct ipmi_user {
>  	struct work_struct remove_work;
>  };
>  
> -struct workqueue_struct *remove_work_wq;
> +static struct workqueue_struct *remove_work_wq;
>  
>  static struct ipmi_user *acquire_ipmi_user(struct ipmi_user *user, int *index)
>  	__acquires(user->release_barrier)
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
