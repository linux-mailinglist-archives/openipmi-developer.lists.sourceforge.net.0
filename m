Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id DF8BF736FC5
	for <lists+openipmi-developer@lfdr.de>; Tue, 20 Jun 2023 17:06:33 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-3.v29.lw.sourceforge.com)
	by sfs-ml-3.v29.lw.sourceforge.com with esmtp (Exim 4.95)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1qBcw6-0002pj-Aa;
	Tue, 20 Jun 2023 15:06:26 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-3.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.95)
 (envelope-from <tcminyard@gmail.com>) id 1qBcvv-0002pc-4x
 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Jun 2023 15:06:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=M7HRYRUpKPOPse2tXMEV0Yq8b6ZSnqJ+PgMEIBRmNbo=; b=Yi8W2BsUecV2tKd9rOoQyMr0tu
 IN2+qOUZPb9VN0z68GYDhcbMuhXmVog23As8bHMF0iyk6ilG9RrHtpWjFTTogbpcuhs/QLRXI6Hpf
 RTyUxPKf8LRv8JaZDcAqkcY3B+TXA0A7wnhNB8tyYaJV7tMJ87gxRZ/1ETRQMmsNnLCw=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=M7HRYRUpKPOPse2tXMEV0Yq8b6ZSnqJ+PgMEIBRmNbo=; b=aehS45YtJqeulsodH5aszJIMZW
 awE6yYtjdfImQWsORk4oXSDEw4Mz2fFjxhqJdB78OxkFXTRtm68fRyxu8mvQfBVqNrOAyVfm30Z7m
 2rabJRn7wKnHutySI+OQzeiY3h2MywPqyENlO6XCrjBqv/sykqNG1OeW2pmZcMpkvzg4=;
Received: from mail-yw1-f173.google.com ([209.85.128.173])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLS1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.95)
 id 1qBcvu-009q3D-87 for openipmi-developer@lists.sourceforge.net;
 Tue, 20 Jun 2023 15:06:14 +0000
Received: by mail-yw1-f173.google.com with SMTP id
 00721157ae682-57012b2973eso55824847b3.2
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 20 Jun 2023 08:06:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20221208; t=1687273568; x=1689865568;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:from:to:cc:subject:date
 :message-id:reply-to;
 bh=M7HRYRUpKPOPse2tXMEV0Yq8b6ZSnqJ+PgMEIBRmNbo=;
 b=KdB1g1hIC4JXwor25dWvQhIY9iA1Z/HcjggxeojGoh6XTmMk4FzWDOeQRchA7RJdRQ
 f3ETTij+EX4+MUPsicFJw0yt69qa+KTkWCgqD2ZHi7M86Uj0NiLyLN3hTcbA9R/epSlW
 Ly/51wZ6adxwBHMCOVB8bAmp/hzlgUAXMVyrrsGBaK77x11z31jmu1ycb0YmuAVdbif/
 W7G4P/sL56eI5shPJCygI0PAYzT080pGh8CqUDEVk+I3m1vpw6nIXoAPGBaBWS+yi8RX
 c3UWg83aS0HuBHPQwvkpI/N65uefJCBK5jnKLdePHFdmTPk4ksG9+O2qHAncY9vJ05/s
 PzWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1687273568; x=1689865568;
 h=in-reply-to:content-disposition:mime-version:references:reply-to
 :message-id:subject:cc:to:from:date:sender:x-gm-message-state:from
 :to:cc:subject:date:message-id:reply-to;
 bh=M7HRYRUpKPOPse2tXMEV0Yq8b6ZSnqJ+PgMEIBRmNbo=;
 b=hIAQDlcItE2FzGHyw8qOEUhG+Hm4qt6I5O5ddnAsCVeHzTJLNyLLBBYmT4khmpwyyW
 +cYWipVRR1l8G6Njgv614Gi4vjwHzSwwxwKw39lzF6jlf75X7XIPvbjdPHQYJuNcd/j1
 jOdoQl9j8k9MCy9ppti8RDqYMT8FzeSAFmGtFqK/t0hdNi8DBL8pLnFE+5dXdOoXsQSp
 DRbaf8lg3Uj2lE8nJMkTF/hThoaFX5BLBldKcznr/OnoQC2GiJz9EU2AHw2yf/anMFiN
 Qjqi4tK02PlH0H9fq9N4qlTnGZ06rogzRn6dF7znL57v3G9WG/O8NKtJIGsf4ia5AJ0u
 sJJw==
X-Gm-Message-State: AC+VfDxPZo90RW0MkJ/pdPdCdfYP2+t6TvSSq1FNrMDeuvpF9oQXStey
 iafW2dNMdKbrSOtd5SC0MA==
X-Google-Smtp-Source: ACHHUZ7rKUDEwUmSQwSQdPCfFs4voZe9/PQFV4vZ/KgBBgbWBmFyZ9C7jhCjot+0QMa/X49kgyJa4w==
X-Received: by 2002:a81:bf52:0:b0:570:17e5:e536 with SMTP id
 s18-20020a81bf52000000b0057017e5e536mr14142882ywk.36.1687273568416; 
 Tue, 20 Jun 2023 08:06:08 -0700 (PDT)
Received: from serve.minyard.net ([47.184.157.108])
 by smtp.gmail.com with ESMTPSA id
 y142-20020a0dd694000000b005707fb5110bsm533462ywd.58.2023.06.20.08.06.07
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 20 Jun 2023 08:06:07 -0700 (PDT)
Received: from mail.minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:3c66:2774:dcfe:891a])
 by serve.minyard.net (Postfix) with ESMTPSA id EFF741800E8;
 Tue, 20 Jun 2023 15:06:06 +0000 (UTC)
Date: Tue, 20 Jun 2023 10:06:05 -0500
From: Corey Minyard <minyard@acm.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Message-ID: <ZJHAXakwV6slpZB/@mail.minyard.net>
References: <20230620143701.577657-2-gregkh@linuxfoundation.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20230620143701.577657-2-gregkh@linuxfoundation.org>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-2.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Tue, Jun 20, 2023 at 04:37:02PM +0200, Greg Kroah-Hartman
 wrote: > From: Ivan Orlov <ivan.orlov0322@gmail.com> > > Now that the driver
 core allows for struct class to be in read-only > memory, move [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.128.173 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.128.173 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_SCC_BODY_TEXT_LINE   No description available.
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1qBcvu-009q3D-87
Subject: Re: [Openipmi-developer] [PATCH] ipmi: make ipmi_class a static
 const structure
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
Cc: openipmi-developer@lists.sourceforge.net,
 Ivan Orlov <ivan.orlov0322@gmail.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jun 20, 2023 at 04:37:02PM +0200, Greg Kroah-Hartman wrote:
> From: Ivan Orlov <ivan.orlov0322@gmail.com>
> 
> Now that the driver core allows for struct class to be in read-only
> memory, move the ipmi_class structure to be declared at build time
> placing it into read-only memory, instead of having to be dynamically
> allocated at boot time.

This is in my next tree and seems to work fine.  Thanks.

-corey

> 
> Cc: Corey Minyard <minyard@acm.org>
> Cc: openipmi-developer@lists.sourceforge.net
> Suggested-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Signed-off-by: Ivan Orlov <ivan.orlov0322@gmail.com>
> Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> ---
>  drivers/char/ipmi/ipmi_devintf.c | 24 ++++++++++++------------
>  1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_devintf.c b/drivers/char/ipmi/ipmi_devintf.c
> index 73e5a9e28f85..332082e02ea5 100644
> --- a/drivers/char/ipmi/ipmi_devintf.c
> +++ b/drivers/char/ipmi/ipmi_devintf.c
> @@ -807,7 +807,9 @@ struct ipmi_reg_list {
>  static LIST_HEAD(reg_list);
>  static DEFINE_MUTEX(reg_list_mutex);
>  
> -static struct class *ipmi_class;
> +static const struct class ipmi_class = {
> +	.name = "ipmi",
> +};
>  
>  static void ipmi_new_smi(int if_num, struct device *device)
>  {
> @@ -822,7 +824,7 @@ static void ipmi_new_smi(int if_num, struct device *device)
>  	entry->dev = dev;
>  
>  	mutex_lock(&reg_list_mutex);
> -	device_create(ipmi_class, device, dev, NULL, "ipmi%d", if_num);
> +	device_create(&ipmi_class, device, dev, NULL, "ipmi%d", if_num);
>  	list_add(&entry->link, &reg_list);
>  	mutex_unlock(&reg_list_mutex);
>  }
> @@ -840,7 +842,7 @@ static void ipmi_smi_gone(int if_num)
>  			break;
>  		}
>  	}
> -	device_destroy(ipmi_class, dev);
> +	device_destroy(&ipmi_class, dev);
>  	mutex_unlock(&reg_list_mutex);
>  }
>  
> @@ -860,15 +862,13 @@ static int __init init_ipmi_devintf(void)
>  
>  	pr_info("ipmi device interface\n");
>  
> -	ipmi_class = class_create("ipmi");
> -	if (IS_ERR(ipmi_class)) {
> -		pr_err("ipmi: can't register device class\n");
> -		return PTR_ERR(ipmi_class);
> -	}
> +	rv = class_register(&ipmi_class);
> +	if (rv)
> +		return rv;
>  
>  	rv = register_chrdev(ipmi_major, DEVICE_NAME, &ipmi_fops);
>  	if (rv < 0) {
> -		class_destroy(ipmi_class);
> +		class_unregister(&ipmi_class);
>  		pr_err("ipmi: can't get major %d\n", ipmi_major);
>  		return rv;
>  	}
> @@ -880,7 +880,7 @@ static int __init init_ipmi_devintf(void)
>  	rv = ipmi_smi_watcher_register(&smi_watcher);
>  	if (rv) {
>  		unregister_chrdev(ipmi_major, DEVICE_NAME);
> -		class_destroy(ipmi_class);
> +		class_unregister(&ipmi_class);
>  		pr_warn("ipmi: can't register smi watcher\n");
>  		return rv;
>  	}
> @@ -895,11 +895,11 @@ static void __exit cleanup_ipmi(void)
>  	mutex_lock(&reg_list_mutex);
>  	list_for_each_entry_safe(entry, entry2, &reg_list, link) {
>  		list_del(&entry->link);
> -		device_destroy(ipmi_class, entry->dev);
> +		device_destroy(&ipmi_class, entry->dev);
>  		kfree(entry);
>  	}
>  	mutex_unlock(&reg_list_mutex);
> -	class_destroy(ipmi_class);
> +	class_unregister(&ipmi_class);
>  	ipmi_smi_watcher_unregister(&smi_watcher);
>  	unregister_chrdev(ipmi_major, DEVICE_NAME);
>  }
> -- 
> 2.41.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
