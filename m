Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 47DA7479595
	for <lists+openipmi-developer@lfdr.de>; Fri, 17 Dec 2021 21:42:26 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1myK3Z-00039P-RW; Fri, 17 Dec 2021 20:42:21 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1myK3Y-00039F-JL
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Dec 2021 20:42:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jJPFhgIsvKzJn7UezO2bKrdTlyTH555tbP3K3YvX9GE=; b=dAxL6SiX3RCuNNaNMbV6gGCG1g
 J4hJIWeYyx/AmpS9zPyO60EUvzHA+BM+6PwabbjUgKW6jItLqbOno7RBzGmfwstxj41zpiYTCzf5s
 TXcDDgXj7zHSzytiAjaWlsZhx472LVO32WHkR7bKdRN2RKjYTSGpj1x/6j5a8bW5LytA=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=jJPFhgIsvKzJn7UezO2bKrdTlyTH555tbP3K3YvX9GE=; b=IATbn41hFyfr524bCtdPZa8LZg
 rQggsQ4ajTbCTHW1pmFc6D6GjUMCjq2FiVGXrT3DK45RnSeo++eu4GGfbXMad3eRdsh7NTzJ1Bj24
 gAFU52sEtPmPM/DRspXB9Ul3Xx5ROOe5ON8HeVWZXShiZoqRpMmHKQCOJIopO2OqTxfM=;
Received: from mail-qk1-f179.google.com ([209.85.222.179])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1myK3X-000439-M9
 for openipmi-developer@lists.sourceforge.net; Fri, 17 Dec 2021 20:42:20 +0000
Received: by mail-qk1-f179.google.com with SMTP id a11so3346256qkh.13
 for <openipmi-developer@lists.sourceforge.net>;
 Fri, 17 Dec 2021 12:42:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=jJPFhgIsvKzJn7UezO2bKrdTlyTH555tbP3K3YvX9GE=;
 b=JuQ/zWsn8JI4BkEcnxXppvSHavTvBWZxUAvS+FCWeXmm34+KaZY1SAdmvIFl2FmtiB
 rdIybrj64k+eGnbkM3Q2VRygmkj0U3zAoEdJa2jY5hAYmIf9CgpdZbtouUEf1g7xK+s2
 eFsgSmy3PkDh5wCjmxdgeu90GQ+ZSWwdsskUk6w1qi66Vr3s9INqn1cN5uXLZKs/zbnf
 SAKb376W0Gtb2t/P4e2vQNp02jniuXO8uVq31yAlh0aL/kHNRpoC0oxl8umeNW9EwemH
 NJic5Y9QARCciXI/8z5S7ZRzRHM6X5x+3oeCeVmWBnL9Thi1J9D1Zigd1fnHN1x7PKt3
 TkUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=jJPFhgIsvKzJn7UezO2bKrdTlyTH555tbP3K3YvX9GE=;
 b=AVCkozD4k+lfElJVn4es4Oe7Do2j/cFoeuSmQVDrBq8ggVmqWxd11Hxki1gjKP8FAO
 Go5XrtMgyRTGxHazuTzBqb5Bt2C+lOtZBwNEOcPjObx3wAj/QnjYX1JdSIxJtY5pTItN
 jDO6rqKj3nw1ToyVuzHnijvGKlLn8shDn6PxRq0b0w1P80lCQb68B+s+56n3pr7AeQM/
 yHa/4BHaOl40eh6glIeKXC1gPPdD56ZzXrurOSaAjGETWRd8WRls/vPLTt7KVnTOII1k
 1IexQXEzJgRA+AuzrVKjLXiqO9OnfXmjVQtVpEATVU9u3MIEgrQlRDdmzejAPz2HQXUM
 Uopw==
X-Gm-Message-State: AOAM530JdAnnunxfLzNlGMTJ53GwdEsJU/D3oOiv2oFL7ap6zM6dj342
 5diZ21spnqjSFtWvX8Kgaw==
X-Google-Smtp-Source: ABdhPJy8y0iM3Dge4lk7oYr/9Zcp7gvHlcJBP5wa9uZNFnBKBidFpbOUWDt0GTq/RyOhD5PovJ4RUA==
X-Received: by 2002:a05:620a:4244:: with SMTP id
 w4mr3100606qko.215.1639773733766; 
 Fri, 17 Dec 2021 12:42:13 -0800 (PST)
Received: from serve.minyard.net ([47.184.156.158])
 by smtp.gmail.com with ESMTPSA id bs16sm5474114qkb.45.2021.12.17.12.42.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 17 Dec 2021 12:42:13 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:253a:bfb0:ae5b:40ba])
 by serve.minyard.net (Postfix) with ESMTPSA id 6571E181061;
 Fri, 17 Dec 2021 20:42:12 +0000 (UTC)
Date: Fri, 17 Dec 2021 14:42:11 -0600
From: Corey Minyard <minyard@acm.org>
To: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
Message-ID: <20211217204211.GM14936@minyard.net>
References: <20211217154410.1228673-1-cascardo@canonical.com>
 <20211217154410.1228673-2-cascardo@canonical.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211217154410.1228673-2-cascardo@canonical.com>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  Thanks for this, I need to be more careful about looking at
 code and not just looking at patches. Both in my queue, I'll try to get them
 in to 5.16. -corey On Fri, Dec 17, 2021 at 12:44:10PM -0300, Thadeu Lima
 de Souza Cascardo wrote: > If the workqueue allocation fails, the driver is
 marked as not initialized, > and timer and panic_notifier will be left [...]
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.222.179 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.222.179 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1myK3X-000439-M9
Subject: Re: [Openipmi-developer] [PATCH 2/2] ipmi: fix initialization when
 workqueue allocation fails
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
Cc: stable@vger.kernel.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, ioanna-maria.alifieraki@canonical.com,
 minyard@mvista.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

Thanks for this, I need to be more careful about looking at code and not
just looking at patches.  Both in my queue, I'll try to get them in to
5.16.

-corey

On Fri, Dec 17, 2021 at 12:44:10PM -0300, Thadeu Lima de Souza Cascardo wrote:
> If the workqueue allocation fails, the driver is marked as not initialized,
> and timer and panic_notifier will be left registered.
> 
> Instead of removing those when workqueue allocation fails, do the workqueue
> initialization before doing it, and cleanup srcu_struct if it fails.
> 
> Fixes: 1d49eb91e86e ("ipmi: Move remove_work to dedicated workqueue")
> Signed-off-by: Thadeu Lima de Souza Cascardo <cascardo@canonical.com>
> Cc: Corey Minyard <cminyard@mvista.com>
> Cc: Ioanna Alifieraki <ioanna-maria.alifieraki@canonical.com>
> Cc: stable@vger.kernel.org
> ---
>  drivers/char/ipmi/ipmi_msghandler.c | 15 +++++++++------
>  1 file changed, 9 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_msghandler.c b/drivers/char/ipmi/ipmi_msghandler.c
> index 84975b21fff2..266c7bc58dda 100644
> --- a/drivers/char/ipmi/ipmi_msghandler.c
> +++ b/drivers/char/ipmi/ipmi_msghandler.c
> @@ -5396,20 +5396,23 @@ static int ipmi_init_msghandler(void)
>  	if (rv)
>  		goto out;
>  
> -	timer_setup(&ipmi_timer, ipmi_timeout, 0);
> -	mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
> -
> -	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
> -
>  	remove_work_wq = create_singlethread_workqueue("ipmi-msghandler-remove-wq");
>  	if (!remove_work_wq) {
>  		pr_err("unable to create ipmi-msghandler-remove-wq workqueue");
>  		rv = -ENOMEM;
> -		goto out;
> +		goto out_wq;
>  	}
>  
> +	timer_setup(&ipmi_timer, ipmi_timeout, 0);
> +	mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);
> +
> +	atomic_notifier_chain_register(&panic_notifier_list, &panic_block);
> +
>  	initialized = true;
>  
> +out_wq:
> +	if (rv)
> +		cleanup_srcu_struct(&ipmi_interfaces_srcu);
>  out:
>  	mutex_unlock(&ipmi_interfaces_mutex);
>  	return rv;
> -- 
> 2.32.0
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
