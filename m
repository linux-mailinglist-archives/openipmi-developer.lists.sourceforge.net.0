Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 4344546D43B
	for <lists+openipmi-developer@lfdr.de>; Wed,  8 Dec 2021 14:18:17 +0100 (CET)
Received: from [127.0.0.1] (helo=sfs-ml-2.v29.lw.sourceforge.com)
	by sfs-ml-2.v29.lw.sourceforge.com with esmtp (Exim 4.94.2)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1muwpp-0007PR-BK; Wed, 08 Dec 2021 13:18:13 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-2.v29.lw.sourceforge.com with esmtps (TLS1.2) tls
 TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384 (Exim 4.94.2)
 (envelope-from <tcminyard@gmail.com>) id 1muwpo-0007PL-Ei
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Dec 2021 13:18:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aY8F8vGS5LQpVlvLyFz5CNctJWdRH4midCkCMB7qk0c=; b=MF931dXFfjHdBdD7RNl55a2rqi
 jsO9V1AvQg5IVol9q8Plw56YZ34s+Nvy41YAt+zCc+LMTHvbP7/iEcwPfEegvKRysQNeXkdX/FvpO
 HmsL7tWAUhGQTfuHIhUkH6SEGAsljf1A7RkhPBlV2oGsY2aRJUDd5tQCdMMTDcOH4g0U=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=aY8F8vGS5LQpVlvLyFz5CNctJWdRH4midCkCMB7qk0c=; b=dYSryZMlZh3j46UJ6Q0bJ8pv5c
 npwv+O08M0uuHQQeo9K7AzX/sqgEjjiYn48ljJxNWi42nI4pqBYuyiogJa+lZIlFoMwgYxbyjymFw
 S4QA+uj6PDK1RlFFu73gGbX+Cj1ENIcgThvcJG9l4RToITbLO4YuSb00F2SeO6ZHU0bI=;
Received: from mail-qv1-f51.google.com ([209.85.219.51])
 by sfi-mx-2.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.3)
 id 1muwpn-0003Ui-Oj
 for openipmi-developer@lists.sourceforge.net; Wed, 08 Dec 2021 13:18:12 +0000
Received: by mail-qv1-f51.google.com with SMTP id gu12so2192408qvb.6
 for <openipmi-developer@lists.sourceforge.net>;
 Wed, 08 Dec 2021 05:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to;
 bh=aY8F8vGS5LQpVlvLyFz5CNctJWdRH4midCkCMB7qk0c=;
 b=QIw7F5rdIXU/HEQB8fpvA7ywYtw9ODFb7M+AjJ3SSTlC9Tq+jAREt2jWTyAAGXWtth
 9dchUlpusXkPsnEwfkXrFGVP4u7/WecEOwncLX6UWbrCNirSlwPhHLG5/h0tiAh48/18
 TNcRDlTCMIM+DFPRzOZFaC1A/LXhA9N3zNNmJ0yNCX5QiIJnVFwJ4zkQGnmdcKBXahil
 DAPpCjgNj23X5OMRptVgt/cc+K9Gz8bB7SJcDFebv8XHUlqU+DD90Zmqrjo1esV17QHH
 ypngE2ctwbiI+BWspfZhUze+KJLTcXV4OJmtPMQEXmTGD1KFvhcX38RiiZYobzK9uVx/
 A/vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to;
 bh=aY8F8vGS5LQpVlvLyFz5CNctJWdRH4midCkCMB7qk0c=;
 b=ciQ12BXW+pzV8NwAtCFLgSlL1bN2YoRHamT2A/FFtpVmWo3YKH52oFHkkE+9d/fToy
 q3QOBvRsZSs519xzaiWewCr9Z4+HXXiR8bXkyo4Hmk8HYrNvqK46G2+cn4YFDDGPlKOO
 s+Fh3pFYnaKk/Y0teIAT3z5d1aNXZzp5p6zfABC52jkGmKtxNC5LguipSVegOPNcQdAO
 GRrfj1FwIjKdpMIhZQfD8fDaZ9LOcardn1b6BT3YzoaHT92KQ9pL9UXkrzFE2MbxHj9L
 mRIbSpWW82x0/I6Ls8XfkZaY5tUO7nN0d/F8K5UxPDSDkq1wcwNb8FCbZj/n84v8WaKl
 eDfw==
X-Gm-Message-State: AOAM532CXFjn6jKntcRDbuf6Z9kBY3wArWNiaqaB6ND3lWk1pfAVWgSB
 BVO6DCOQVDseyZcxrUQyQG6WHMFZ0A==
X-Google-Smtp-Source: ABdhPJxlX0RIChvYM+4f3ro24q5AcEzLWV+II2R8WfXow3WzfHpEfX9bb/Myw67CL3kHQrlvPpoQ/g==
X-Received: by 2002:a05:6214:8c2:: with SMTP id
 da2mr7245439qvb.23.1638969485626; 
 Wed, 08 Dec 2021 05:18:05 -0800 (PST)
Received: from serve.minyard.net (serve.minyard.net. [2001:470:b8f6:1b::1])
 by smtp.gmail.com with ESMTPSA id a17sm1419254qkp.108.2021.12.08.05.18.05
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 08 Dec 2021 05:18:05 -0800 (PST)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:c45a:2d46:25a4:be1f])
 by serve.minyard.net (Postfix) with ESMTPSA id 4EC37180013;
 Wed,  8 Dec 2021 13:18:04 +0000 (UTC)
Date: Wed, 8 Dec 2021 07:18:03 -0600
From: Corey Minyard <minyard@acm.org>
To: Mian Yousaf Kaukab <ykaukab@suse.de>
Message-ID: <20211208131803.GW15676@minyard.net>
References: <20211208093239.4432-1-ykaukab@suse.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20211208093239.4432-1-ykaukab@suse.de>
X-Spam-Score: 0.4 (/)
X-Spam-Report: Spam detection software,
 running on the system "util-spamd-1.v13.lw.sourceforge.com", 
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 Content preview:  On Wed, Dec 08, 2021 at 10:32:39AM +0100, Mian Yousaf Kaukab
 wrote: > During probe ssif_info->client is dereferenced in error path. However,
 > it is set when some of the error checking has already bee [...] 
 Content analysis details:   (0.4 points, 6.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tcminyard[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.219.51 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.219.51 listed in list.dnswl.org]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
X-Headers-End: 1muwpn-0003Ui-Oj
Subject: Re: [Openipmi-developer] [PATCH] ipmi: ssif: initialize
 ssif_info->client early
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
Cc: Takashi Iwai <tiwai@suse.de>, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Wed, Dec 08, 2021 at 10:32:39AM +0100, Mian Yousaf Kaukab wrote:
> During probe ssif_info->client is dereferenced in error path. However,
> it is set when some of the error checking has already been done. This
> causes following kernel crash if an error path is taken:
> 
> [   30.645593][  T674] ipmi_ssif 0-000e: ipmi_ssif: Not probing, Interface already present
> [   30.657616][  T674] Unable to handle kernel NULL pointer dereference at virtual address 0000000000000088
> ...
> [   30.657723][  T674] pc : __dev_printk+0x28/0xa0
> [   30.657732][  T674] lr : _dev_err+0x7c/0xa0
> ...
> [   30.657772][  T674] Call trace:
> [   30.657775][  T674]  __dev_printk+0x28/0xa0
> [   30.657778][  T674]  _dev_err+0x7c/0xa0
> [   30.657781][  T674]  ssif_probe+0x548/0x900 [ipmi_ssif 62ce4b08badc1458fd896206d9ef69a3c31f3d3e]
> [   30.657791][  T674]  i2c_device_probe+0x37c/0x3c0
> ...
> 
> Initialize ssif_info->client before any error path can be taken. Clear
> i2c_client data in the error path to prevent the dangling pointer from
> leaking.

Sigh, I just sent some fixes up to Linus, so this was bound to happen :).
This is in my for-next tree, I'll send it up in a few days if everything
is ok.

Thanks,

-corey

> 
> Fixes: c4436c9149c5 ("ipmi_ssif: avoid registering duplicate ssif interface")
> Suggested-by: Takashi Iwai <tiwai@suse.de>
> Signed-off-by: Mian Yousaf Kaukab <ykaukab@suse.de>
> ---
>  drivers/char/ipmi/ipmi_ssif.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_ssif.c b/drivers/char/ipmi/ipmi_ssif.c
> index 0c62e578749e..48aab77abebf 100644
> --- a/drivers/char/ipmi/ipmi_ssif.c
> +++ b/drivers/char/ipmi/ipmi_ssif.c
> @@ -1659,6 +1659,9 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  		}
>  	}
>  
> +	ssif_info->client = client;
> +	i2c_set_clientdata(client, ssif_info);
> +
>  	rv = ssif_check_and_remove(client, ssif_info);
>  	/* If rv is 0 and addr source is not SI_ACPI, continue probing */
>  	if (!rv && ssif_info->addr_source == SI_ACPI) {
> @@ -1679,9 +1682,6 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  		ipmi_addr_src_to_str(ssif_info->addr_source),
>  		client->addr, client->adapter->name, slave_addr);
>  
> -	ssif_info->client = client;
> -	i2c_set_clientdata(client, ssif_info);
> -
>  	/* Now check for system interface capabilities */
>  	msg[0] = IPMI_NETFN_APP_REQUEST << 2;
>  	msg[1] = IPMI_GET_SYSTEM_INTERFACE_CAPABILITIES_CMD;
> @@ -1881,6 +1881,7 @@ static int ssif_probe(struct i2c_client *client, const struct i2c_device_id *id)
>  
>  		dev_err(&ssif_info->client->dev,
>  			"Unable to start IPMI SSIF: %d\n", rv);
> +		i2c_set_clientdata(client, NULL);
>  		kfree(ssif_info);
>  	}
>  	kfree(resp);
> -- 
> 2.31.1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
