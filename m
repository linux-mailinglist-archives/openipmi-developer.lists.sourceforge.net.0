Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A6CD226F49
	for <lists+openipmi-developer@lfdr.de>; Mon, 20 Jul 2020 21:52:50 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1jxbqB-0007GO-W3; Mon, 20 Jul 2020 19:52:47 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1jxbqA-0007GG-Dy
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 19:52:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=atKBBWcnU++49tmxsg8oq4hs4l/FvwBwr9+f5kHrPQE=; b=iBPyfuTDsfOnWyVFxRhoNsKr8X
 0JE5YkW19a1mrjDNua7U+oaCpCmh+SkUgeDJUO450pJDhbI2qVYRZTfa6bHV6tFoReJrQ5TyJsK5o
 +hvEQa2wG0JOOQK3zFCCEc/O4xDbtvnCI2yqroQNUADeosn5A3cxXOP9N88EFZFcM/xc=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=atKBBWcnU++49tmxsg8oq4hs4l/FvwBwr9+f5kHrPQE=; b=F26oBrz9Gsv5QZU3A6qufJga2R
 WygWDwaAXWmGrfbcqOfpjECPVOSwJuwGnpYObkchN0ZO5OnOP7r/qgHHGGdP7sM7fKkSLS+mrPB58
 ALSZ/dPEU7dFUIcEGE8SPZc+GeNhuDez4v1j30ldZQ/GpWmFdiL0A6jfew3kVDzVi1Fg=;
Received: from mail-oi1-f194.google.com ([209.85.167.194])
 by sfi-mx-1.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.92.2)
 id 1jxbq9-0020fS-1x
 for openipmi-developer@lists.sourceforge.net; Mon, 20 Jul 2020 19:52:46 +0000
Received: by mail-oi1-f194.google.com with SMTP id e4so15331895oib.1
 for <openipmi-developer@lists.sourceforge.net>;
 Mon, 20 Jul 2020 12:52:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=atKBBWcnU++49tmxsg8oq4hs4l/FvwBwr9+f5kHrPQE=;
 b=ZJgoG2v9a3cZM4UqmYfn++N0kaA7KzoYlCD9aks8VYOBn6rR2+oadW4WeaetOwqXtK
 9wtVNkYUeRNpdgZdpD+4e+Mag6dOG1iYFX6G23w8cUWbC4x9lIkJXTKEcABwlW9RoBta
 cveGXS4ay5iUd+m/7R2K4Ua8LV51xZIjRokaakCsIUNSsba1YZzoXl5gD1PMqOvCC1Dc
 r3vPcnm9E+/TXxURYhySdwQtwm4D6sJxEsJgc8i8nDHRhKYeLQbSk/rBHS2MNcl3pujD
 hPHIV/HsqNZTwXWDJYKxAx8bnhhzRuLkzkCDoyVOKtqrIdVIuO7wAzcKwn0/dCVo5Pc8
 Bg2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=atKBBWcnU++49tmxsg8oq4hs4l/FvwBwr9+f5kHrPQE=;
 b=LKaF2QEsiGRy3B0/juqDLpXuwNE7QoRuA1eQ/5PPmADXXIjGlPaMr6cOfGHlRoX1B4
 E5mUpm3yvLZ7fOMavFHOgFmvWHehnqOTvDQKiwW3+7qGFXIWrbnwaIwlnMVUohm2c0EX
 sAfqt4MhOKGCtxYdahVjsg688Zdz9i3+5fqMlvl4/z3LpIPGBdQVofhAQ6HqrT8rUAUT
 UBZaHoHtXXIuJIU7ib6lqPQ5apNTUkyFQTe+/+ShNAIujqZbEMQ7W6DO1NFH/J1EWiOw
 /duUGks3ofBK/0HwDY10hXUcKX7QuQkZ4x9oaV1kXwB3z//jXglejuq0z2FW2G5NvM2H
 fQjg==
X-Gm-Message-State: AOAM533slPJypzWmMAWlsVGLd6EnMxRA0ua+vbcLfVfUU6aWG0q+/7/+
 iIk0iqSc/xqfCJOlkQusnA==
X-Google-Smtp-Source: ABdhPJxqM6pg5Fv/HsBONDNbtH4Msu1sRLXaPLyToL/8sGazJJtntFelMODQ9A/uOG96DKl0XKiNrA==
X-Received: by 2002:aca:57c5:: with SMTP id l188mr725424oib.154.1595274759308; 
 Mon, 20 Jul 2020 12:52:39 -0700 (PDT)
Received: from serve.minyard.net ([47.184.146.204])
 by smtp.gmail.com with ESMTPSA id s4sm4573610oom.15.2020.07.20.12.52.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 20 Jul 2020 12:52:38 -0700 (PDT)
Received: from minyard.net (unknown
 [IPv6:2001:470:b8f6:1b:70d6:b947:41f4:6e7e])
 by serve.minyard.net (Postfix) with ESMTPSA id 1B9E5180050;
 Mon, 20 Jul 2020 19:52:36 +0000 (UTC)
Date: Mon, 20 Jul 2020 14:52:34 -0500
From: Corey Minyard <minyard@acm.org>
To: Xiongfeng Wang <wangxiongfeng2@huawei.com>
Message-ID: <20200720195234.GC2952@minyard.net>
References: <1595210605-27888-1-git-send-email-wangxiongfeng2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1595210605-27888-1-git-send-email-wangxiongfeng2@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.0 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.167.194 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.194 listed in wl.mailspike.net]
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
X-Headers-End: 1jxbq9-0020fS-1x
Subject: Re: [Openipmi-developer] [PATCH] ipmi/watchdog: add missing
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
Cc: gregkh@linuxfoundation.org, openipmi-developer@lists.sourceforge.net,
 linux-kernel@vger.kernel.org, arnd@arndb.de, guohanjun@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Mon, Jul 20, 2020 at 10:03:25AM +0800, Xiongfeng Wang wrote:
> When I cat some ipmi_watchdog parameters by sysfs, it displays as
> follows. It's better to add a newline for easy reading.
> 
> root@(none):/# cat /sys/module/ipmi_watchdog/parameters/action
> resetroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preaction
> pre_noneroot@(none):/# cat /sys/module/ipmi_watchdog/parameters/preop
> preop_noneroot@(none):/#

Yeah, that's not consistent with other things displayed in the kernel.

> 
> Signed-off-by: Xiongfeng Wang <wangxiongfeng2@huawei.com>
> ---
>  drivers/char/ipmi/ipmi_watchdog.c | 8 ++++++--
>  1 file changed, 6 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/char/ipmi/ipmi_watchdog.c b/drivers/char/ipmi/ipmi_watchdog.c
> index 55986e1..3e05a1d 100644
> --- a/drivers/char/ipmi/ipmi_watchdog.c
> +++ b/drivers/char/ipmi/ipmi_watchdog.c
> @@ -232,12 +232,16 @@ static int set_param_str(const char *val, const struct kernel_param *kp)
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
> +	len += sprintf(buffer + len, "\n");

sprintf is kind of overkill to stick a \n on the end of a line.  How
about:

	buffer[len++] = '\n';

Since you are returning the length, you shouldn't need to nil terminate
the string.

An unrelated question: Are you using any of the special functions of the
IPMI watchdog, like the pretimeout?

-corey

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
