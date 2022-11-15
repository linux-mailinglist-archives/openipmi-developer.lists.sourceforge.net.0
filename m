Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1FB57629BC5
	for <lists+openipmi-developer@lfdr.de>; Tue, 15 Nov 2022 15:15:56 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1ouwj9-00019T-98;
	Tue, 15 Nov 2022 14:15:51 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1ouwiy-00019I-M0
 for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 14:15:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MmCortd4X07eaHsaVrw2gTAngPKvClGjD0Ma0coZZ+w=; b=L3GD3BDtMk/HIGKprtSF5Z1icv
 iJaq+4tYU4I9g+ffaNIJW0Oq1+AG7TkTPK7RVmmTkvQQBub3WhXf4UssBDCrQ0TzKwfxWLLkQ+RWa
 qXyGgetdgrM5KC4/XumVgbMkhJYPVZmD/BctyDZNOvCGfjTYbByXJkLvs6Fx7iTf+loo=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=MmCortd4X07eaHsaVrw2gTAngPKvClGjD0Ma0coZZ+w=; b=Mt61MRoAtCG2sQFqPvVp0BcDqx
 6MD0E4VFaxJ2bV0BD6BPYqfmi7JdzcBNESWqAu8MUydkn8izymAFT60rqaoJcUFmcB7rmVOcQFJUU
 1CmuBaBdVgNeu/jyzBJUjmMOBAdWi8z08KJAmICr1WPbRiJFmJGPabss6P60DZruiA3k=;
Received: from mail-qv1-f54.google.com ([209.85.219.54])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1ouwit-0006Tb-SD for openipmi-developer@lists.sourceforge.net;
 Tue, 15 Nov 2022 14:15:39 +0000
Received: by mail-qv1-f54.google.com with SMTP id h10so9846759qvq.7
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 15 Nov 2022 06:15:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=MmCortd4X07eaHsaVrw2gTAngPKvClGjD0Ma0coZZ+w=;
 b=hA81zEgYkoCvvLzGBWtKslpJBNtJsrMzfgzLIB4SYaQ+CuNw4I540lOLF9vLU/rHmV
 lB5oRXcJqlaWg/2HiQ7eljuCpiIfY1S7IhQAOV8DENMUqb6tUlo7o5GHynDOn7/fO+Hk
 QmiRRcZh6o101+sWJZHp8tAg3LE+IQLQYhxrm1zMrkYkFp6Z8CsQ1FVc3N1LLMytYdgi
 m/lIS//b5dErFBmHtvPyHxrFho0dopwHN8fwjQKvi3xfrDWRWQinIoE4z50mO+9KHQ9U
 zZ2fGAHNLHXfTiyJ5+V90TybLmoVJSfqf9n2oG6gf+Cn3Vw9Y+vcncrUfb7mXEixnZKK
 xh8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=MmCortd4X07eaHsaVrw2gTAngPKvClGjD0Ma0coZZ+w=;
 b=WN8UnEZ5+kZL+4FdMUT6pha+M3RRoueMX+ViyscZ6fi9dhKIBvxCRX+Htj/MykTZKk
 et5HRhyX9RxL1cZiCV9l+qQM3C3V0Pqymzpp0UtDPi//0dEhQo04mya8MyJpzaN8NoAq
 76s0CF2jek1zBp5EBUuSdrM1xsXuL1PltEVXNoh3Ed2nVVSBpdcmUaHiS339q0nZzY8c
 vfJBs4Xv43oTZ4e447fdo8UppzAm6U/73f1RQWz8L+ZxPeUF2XTT9CC7tDIo/+aZxuPB
 vl7z4C8rnh0E7fVvl9Kwd77Z8CKEmKOWqArRNhxueAnM0tj8DKUzUz4KP0ZrQR1FYmSq
 ae/Q==
X-Gm-Message-State: ANoB5pmaWrZK/QFZscTy6o6XXHgrSuuDUlE7mCCXajKm/c+Bl3RQqUjh
 UvpBMoy1LisWtFIqewm3+lw1/cBwYQ==
X-Google-Smtp-Source: AA0mqf4VpZRSL5eJUMiINzc/4a/zmp7QAJt7MIpW3sNl5VEIR1VsJrqZbd99YXHOCyF7b6C984NfDQ==
X-Received: by 2002:a0c:f98b:0:b0:4bb:93b8:ef1c with SMTP id
 t11-20020a0cf98b000000b004bb93b8ef1cmr16908333qvn.103.1668521729834; 
 Tue, 15 Nov 2022 06:15:29 -0800 (PST)
Received: from serve.minyard.net ([47.184.147.45])
 by smtp.gmail.com with ESMTPSA id
 x81-20020a376354000000b006cfc9846594sm8031820qkb.93.2022.11.15.06.15.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Nov 2022 06:15:29 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:2bd8:1330:9bfe:f1cd])
 by serve.minyard.net (Postfix) with ESMTPSA id D9A7C180044;
 Tue, 15 Nov 2022 14:15:27 +0000 (UTC)
Date: Tue, 15 Nov 2022 08:15:26 -0600
From: Corey Minyard <minyard@acm.org>
To: Dan Carpenter <error27@gmail.com>
Message-ID: <Y3Oe6KcXabXlwdbx@minyard.net>
References: <Y3M8xa1drZv4CToE@kili>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <Y3M8xa1drZv4CToE@kili>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Nov 15, 2022 at 04:17:43PM +0300,
 Dan Carpenter wrote:
 > The intf_free() function frees the "intf" pointer so we cannot > dereference
 it again on the next line. Thanks. I will request a backport for 5.5 and
 later. Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.54 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.54 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1ouwit-0006Tb-SD
Subject: Re: [Openipmi-developer] [PATCH] ipmi: fix use after free in
 _ipmi_destroy_user()
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
Cc: openipmi-developer@lists.sourceforge.net, kernel-janitors@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Nov 15, 2022 at 04:17:43PM +0300, Dan Carpenter wrote:
> The intf_free() function frees the "intf" pointer so we cannot
> dereference it again on the next line.

Thanks.  I will request a backport for 5.5 and later.

> 
> Fixes: cbb79863fc31 ("ipmi: Don't allow device module unload when in use")
> Signed-off-by: Dan Carpenter <error27@gmail.com>
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index f6b8ca6df9b5..186f1fee7534 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -1330,6 +1330,7 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
>  	unsigned long    flags;
>  	struct cmd_rcvr  *rcvr;
>  	struct cmd_rcvr  *rcvrs = NULL;
> +	struct module    *owner;
>  
>  	if (!acquire_ipmi_user(user, &i)) {
>  		/*
> @@ -1392,8 +1393,9 @@ static void _ipmi_destroy_user(struct ipmi_user *user)
>  		kfree(rcvr);
>  	}
>  
> +	owner = intf->owner;
>  	kref_put(&intf->refcount, intf_free);
> -	module_put(intf->owner);
> +	module_put(owner);
>  }
>  
>  int ipmi_destroy_user(struct ipmi_user *user)
> -- 
> 2.35.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
