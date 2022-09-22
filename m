Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 09B465E67B9
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Sep 2022 17:56:40 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1obOYo-0001nt-Bz;
	Thu, 22 Sep 2022 15:56:34 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1obOYn-0001nn-64
 for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 15:56:33 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=5FPZpJ0fRyMuZJ1L9OxeKsqck40ptxGwxidl+b3tGX4=; b=ZwjTZWvZ/tbf0nc7lh9hLMEwyR
 0nCuIwMRuprSS8zT29PbVv66epjIuosP+eIOhti/epIrxPiB7Q7DJKZ1kXNOyxtXUFtfJ8uc7qdUT
 YgofPjq+I9BKvpzvybEoLkO8aeNOOwzZ1/JM8me51ObJPNw62krttOZ/nReMSPLOVotM=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=5FPZpJ0fRyMuZJ1L9OxeKsqck40ptxGwxidl+b3tGX4=; b=UR+82NRrqcOeTkpvjQN0MkW7PY
 i/6pBtliZzmZi7Wf+s9Pq1wqewT0DK/tSMWBYWHm/BRTxEUa/co7fmJ9DPbVNh+wV4+49uilLvSLN
 /Nva70fMnClZdAP0t3ARsxlZ8yIIDFdB4/jB2OP3FYUyPFDoiLJzR6Wc8oym3yDRGIho=;
Received: from mail-qv1-f42.google.com ([209.85.219.42])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1obOYx-0005gm-OS for openipmi-developer@lists.sourceforge.net;
 Thu, 22 Sep 2022 15:56:33 +0000
Received: by mail-qv1-f42.google.com with SMTP id z9so7079949qvn.9
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Sep 2022 08:56:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date;
 bh=5FPZpJ0fRyMuZJ1L9OxeKsqck40ptxGwxidl+b3tGX4=;
 b=Da57zXRlppFxRnO7kfk3kFe5O1RdWTzETBZtJPzoi5CO89N5ZX4zOxOuOSzOJaSvWf
 2bX8mVhK8d9cyPXD9df+GwY/0pb0XsF2PU1qbqALZNSortKqO64KlDnvErbKNGFFAwxW
 Y42eJt11BkHq0i7CaJXq4mXmziZF5qNZf0ZbjlAlNL0TnjQFntQf2bAHF1xAtjHA0aWP
 EdzH41uXrjL5Yosf4bRoPU/3+RJywmUJ577i7cmqriW7i1URh5/5vanizkWmGgadifv2
 +unsoEeyVp7Ya6HLS7SAulZ1P3XkL2bZwLdVMU5Nn5NAg/Zv3RQaR3TAIZ20+zEtm8PD
 HXrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date;
 bh=5FPZpJ0fRyMuZJ1L9OxeKsqck40ptxGwxidl+b3tGX4=;
 b=vxjJaX2+OnOzX6Q2oWpf5Ig/RaxwD83g6E+hzCiMo/yTz976xX8mmYAML6oXNzYJld
 BwyuDftEpdpsLe5guUGJM6b7s3KKK4gFcD2R2tyDZPletQm3PXUN/EI+8GExDvWE8MDr
 vI038Wplfw7RuySSWp4aYr9l4bp8Qwnfppolwax4pX8rP1CJQkkZviiwZX0VNdHoNInY
 fjxLE7vjDMkQVtysBQFZERTH5EwY7fh606+2LtrC5dwOxENBZmwr1RraFesEbQOhG+9/
 I4xYlqzYQaIWlv3LwpHM1hNhwhJcVihtAJC2xyof0HU/ZqXevH8HxDcDDQDmzlPvUnI/
 xPSw==
X-Gm-Message-State: ACrzQf3WEcB2x1jjuiWyN+jHC3cuD0Dsud1jDg1Gx/Cj37ebkmc3xG3M
 ckGvr5ZhJUuuLoO7191QMA==
X-Google-Smtp-Source: AMsMyM6lo+S2hjJFpo8MoFJAXaVpld/ZiBVdMkyLYWk6HxyY4pOCBVXY1xBkeJiUULuRjVlHl1Vj2Q==
X-Received: by 2002:a05:6214:3011:b0:4ad:82d6:d579 with SMTP id
 ke17-20020a056214301100b004ad82d6d579mr2326059qvb.37.1663862185767; 
 Thu, 22 Sep 2022 08:56:25 -0700 (PDT)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id
 dt10-20020a05620a478a00b006ce3cffa2c8sm4350348qkb.43.2022.09.22.08.56.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Sep 2022 08:56:25 -0700 (PDT)
Received: from minyard.net (unknown [IPv6:2001:470:b8f6:1b:5d3f:d09:85d2:d6e])
 by serve.minyard.net (Postfix) with ESMTPSA id 084AC1800BD;
 Thu, 22 Sep 2022 15:56:24 +0000 (UTC)
Date: Thu, 22 Sep 2022 10:56:22 -0500
From: Corey Minyard <minyard@acm.org>
To: Xiu Jianfeng <xiujianfeng@huawei.com>
Message-ID: <YyyFphRSkO4roYlk@minyard.net>
References: <20220922111924.36044-1-xiujianfeng@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20220922111924.36044-1-xiujianfeng@huawei.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Thu, Sep 22, 2022 at 07:19:24PM +0800, Xiu Jianfeng wrote:
 > Add missing __init/__exit annotations to module init/exit funcs. Applied,
 thanks. -corey 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.42 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.42 listed in wl.mailspike.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1obOYx-0005gm-OS
Subject: Re: [Openipmi-developer] [PATCH] ipmi: Add __init/__exit
 annotations to module init/exit funcs
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
Cc: openipmi-developer@lists.sourceforge.net, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Thu, Sep 22, 2022 at 07:19:24PM +0800, Xiu Jianfeng wrote:
> Add missing __init/__exit annotations to module init/exit funcs.

Applied, thanks.

-corey

> 
> Signed-off-by: Xiu Jianfeng <xiujianfeng@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_ssif.c         | 4 ++--
>  drivers/char/ipmi/kcs_bmc_cdev_ipmi.c | 4 ++--
>  drivers/char/ipmi/kcs_bmc_serio.c     | 4 ++--
>  3 files changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 13da021e7c6b..e1072809fe31 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -2098,7 +2098,7 @@ static struct platform_driver ipmi_driver = {
>  	.id_table       = ssif_plat_ids
>  };
>  
> -static int init_ipmi_ssif(void)
> +static int __init init_ipmi_ssif(void)
>  {
>  	int i;
>  	int rv;
> @@ -2140,7 +2140,7 @@ static int init_ipmi_ssif(void)
>  }
>  module_init(init_ipmi_ssif);
>  
> -static void cleanup_ipmi_ssif(void)
> +static void __exit cleanup_ipmi_ssif(void)
>  {
>  	if (!initialized)
>  		return;
> diff --git a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> index 486834a962c3..cf670e891966 100644
> --- a/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> +++ b/drivers/char/ipmi/kcs_bmc_cdev_ipmi.c
> @@ -548,7 +548,7 @@ static struct kcs_bmc_driver kcs_bmc_ipmi_driver = {
>  	.ops = &kcs_bmc_ipmi_driver_ops,
>  };
>  
> -static int kcs_bmc_ipmi_init(void)
> +static int __init kcs_bmc_ipmi_init(void)
>  {
>  	kcs_bmc_register_driver(&kcs_bmc_ipmi_driver);
>  
> @@ -556,7 +556,7 @@ static int kcs_bmc_ipmi_init(void)
>  }
>  module_init(kcs_bmc_ipmi_init);
>  
> -static void kcs_bmc_ipmi_exit(void)
> +static void __exit kcs_bmc_ipmi_exit(void)
>  {
>  	kcs_bmc_unregister_driver(&kcs_bmc_ipmi_driver);
>  }
> diff --git a/drivers/char/ipmi/kcs_bmc_serio.c b/drivers/char/ipmi/kcs_bmc_serio.c
> index 7e2067628a6c..1793358be782 100644
> --- a/drivers/char/ipmi/kcs_bmc_serio.c
> +++ b/drivers/char/ipmi/kcs_bmc_serio.c
> @@ -140,7 +140,7 @@ static struct kcs_bmc_driver kcs_bmc_serio_driver = {
>  	.ops = &kcs_bmc_serio_driver_ops,
>  };
>  
> -static int kcs_bmc_serio_init(void)
> +static int __init kcs_bmc_serio_init(void)
>  {
>  	kcs_bmc_register_driver(&kcs_bmc_serio_driver);
>  
> @@ -148,7 +148,7 @@ static int kcs_bmc_serio_init(void)
>  }
>  module_init(kcs_bmc_serio_init);
>  
> -static void kcs_bmc_serio_exit(void)
> +static void __exit kcs_bmc_serio_exit(void)
>  {
>  	kcs_bmc_unregister_driver(&kcs_bmc_serio_driver);
>  }
> -- 
> 2.17.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
