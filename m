Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 70C2D227EF8
	for <lists+openipmi-developer@lfdr.de>; Tue, 21 Jul 2020 13:32:10 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-1.v29.lw.sourceforge.com)
	by sfs-ml-1.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxqVE-0002SO-FV; Tue, 21 Jul 2020 11:32:08 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-1.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jxqVC-0002SA-Vw
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 11:32:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=J8+ZzLQU1DKkGpd+nrEd6PrRxlNkrxHw8dBLLALGP/4=; b=USB6n2dxn0RAtFNGo/9VaXhWyF
 06TQDHorb2rlES02OXBZgaZ6pyhxd6C0N7MxkrtHk9ivnKmqwc0K3jAWzLPhuj8WXNZT53Y4uid1D
 Mq7wVghFAputtSnDITKTVkpQrEPz2O39qCK1vOslpcbeqpRfgwqXugyjlmX9UlYm0iag=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=J8+ZzLQU1DKkGpd+nrEd6PrRxlNkrxHw8dBLLALGP/4=; b=fCLS1EyxbGWdafVRZWas2od0Vw
 bRKGPkM+75o/swTjUfeJXgwfj15qWfX8Hrov+YUWUmNHB/K99FOBH8uqAy8CgN+xee1vGN5Dy9Rju
 XVaaQhPevcf0D6lnxgDdgFWRwv8plU1YOe8KD0tm49QTOBjgUDwPqsv8QG1Ca3sbytvE=;
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by sfi-mx-4.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxqVB-00F0J3-Sv
 for openipmi-developer@lists.sourceforge.net; Tue, 21 Jul 2020 11:32:06 +0000
Received: by mail-ot1-f67.google.com with SMTP id w17so14803869otl.4
 for <openipmi-developer@lists.sourceforge.net>;
 Tue, 21 Jul 2020 04:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=J8+ZzLQU1DKkGpd+nrEd6PrRxlNkrxHw8dBLLALGP/4=;
 b=mBmDm2wxTdvMcm1uLvLz/S2MTRQoiNFHp26/ALu0Z15rkWakMIMMYBYSQ1m5BV8Vj7
 zarNUBw1TKK0gu83LpYu8Rux5oPZ43QgrTmnPHlCs5iHAT3j5xyayvCa3FqLKLcaoLHg
 T8pBl7caJAByaP7IoZCvlpanEY3WucjtCrhDfgntzaBmcC7vdU5koHWDy5aUroxF8S+J
 4rOYfE9AjrH4/zOL9L1/8tbNLhM8jRLeutmg664m9Fc1lMVmcHkc32gzDUx1K729SmY+
 EZH/mnYbet+kTjwjCZGHyD+W0cYwQoRkWi/F6qXnKXiNfIMC0ifJG0XpR+h/2f7Dlie5
 SAtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=J8+ZzLQU1DKkGpd+nrEd6PrRxlNkrxHw8dBLLALGP/4=;
 b=UcbwpPvyw53rKQPHCHAETi8qavIGEz2HRt3mnrOFUfvg1U90AGNbUo+cCYM1kxP20g
 O2G/8dLMe82EHqH5RNuXROiNHlcsxGpopZNReZsZ+TmrK5GTiljofjcqxgC4Xp0W+jWv
 FSyttuQWYrJEYtztTKbLnMknW0AiIiBRsjgmNgkt90aJcIWKEXIsrbzPNnqH42cM0KnU
 1ATG1VqldIcDKFWS05pk1lPpgSiyl0x5GsK2oXoebm+qb7OjNJdwTm73mkM3yJcWx5uD
 qK3FDvP4SVrulFZ+KkFZKjbqwyF1+juzc2zWC1IoRMDynNp77Z7T8OQZd0EJw0ugjkk1
 b3OA==
X-Gm-Message-State: AOAM532LCVqVXYz/UCqj27FHJpe3wxvNjMuhU4fXBogQGAp5+dXaXd+G
 0d27GunFNXkUl7NNkgZlJg==
X-Google-Smtp-Source: ABdhPJy4fDNvNSAWBrkH6siHqvLvS4hIhyc98yEGNeHrZmkH8eBvKk3W0h8YSMqDMrD27KE6ulXf5w==
X-Received: by 2002:a9d:4ef:: with SMTP id 102mr23456732otm.289.1595331112867; 
 Tue, 21 Jul 2020 04:31:52 -0700 (PDT)
Received: from serve.minyard.net ([47.184.146.204])
 by smtp.gmail.com with ESMTPSA id x10sm5035671ooq.13.2020.07.21.04.31.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Jul 2020 04:31:51 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:70d6:b947:41f4:6e7e])
 by serve.minyard.net (Postfix) with ESMTPSA id BDAFA18003B;
 Tue, 21 Jul 2020 11:31:50 +0000 (UTC)
Date: Tue, 21 Jul 2020 06:31:49 -0500
From: Corey Minyard <minyard@acm.org>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <20200721113149.GH2952@minyard.net>
References: <1595313309-43881-1-git-send-email-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1595313309-43881-1-git-send-email-wangxiongfeng2@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: huawei.com]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.67 listed in list.dnswl.org]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jxqVB-00F0J3-Sv
Subject: Re: [Openipmi-developer] [PATCH v2] ipmi/watchdog: add missing
 newlines when printing parameters by sysfs
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
Cc: arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 guohanjun@huawei.com, joe@perches.com,
 openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Tue, Jul 21, 2020 at 02:35:09PM +0800, Xiongfeng Wang wrote:
> When I cat some ipmi_watchdog parameters by sysfs, it displays as
> follows. It's better to add a newline for easy reading.
> 
> root@(none):/# cat /sys/module/ipmi_watchdog/parameters/action
> resetroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preaction
> pre_noneroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preop
> preop_noneroot@(none):/#
> 
> Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>

Thanks, included in my queue for next release.

-corey

> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 9 +++++++--
>  1 file changed, 7 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 55986e1..f78156d 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -232,12 +232,17 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
>  static int get_param_str(char *buffer, const struct kernel_param *kp)
>  {
>  	action_fn fn = (action_fn) kp->arg;
> -	int       rv;
> +	int rv, len;
>  
>  	rv = fn(NULL, buffer);
>  	if (rv)
>  		return rv;
> -	return strlen(buffer);
> +
> +	len = strlen(buffer);
> +	buffer[len++] = '\n';
> +	buffer[len] = 0;
> +
> +	return len;
>  }
>  
>  
> -- 
> 1.7.12.4
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
