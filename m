Return-Path: <openipmi-developer-bounces@lists.sourceforge.net>
X-Original-To: lists+openipmi-developer@lfdr.de
Delivered-To: lists+openipmi-developer@lfdr.de
Received: from lists.sourceforge.net (lists.sourceforge.net [216.105.38.7])
	by mail.lfdr.de (Postfix) with ESMTPS id 1234099986
	for <lists+openipmi-developer@lfdr.de>; Thu, 22 Aug 2019 18:47:26 +0200 (CEST)
Received: from [127.0.0.1] (helo=sfs-ml-4.v29.lw.sourceforge.com)
	by sfs-ml-4.v29.lw.sourceforge.com with esmtp (Exim 4.90_1)
	(envelope-from <openipmi-developer-bounces@lists.sourceforge.net>)
	id 1i0qFA-0002bg-L9; Thu, 22 Aug 2019 16:47:24 +0000
Received: from [172.30.20.202] (helo=mx.sourceforge.net)
 by sfs-ml-4.v29.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <tcminyard@gmail.com>) id 1i0qF9-0002bZ-Nw
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 16:47:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sourceforge.net; s=x; h=In-Reply-To:Content-Type:MIME-Version:References:
 Reply-To:Message-ID:Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:
 Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
 Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=s4azxeQGydjur5EO3HvCGXPvD7oOvP7SzvfZm4pvq84=; b=U+Zvds3/gBJwb3By0DX/MwJ6NB
 eemMgTJziNCuBHox9Fi0U7Z7G1O7xCvaM33vhZe9FYqF8HYZU1wF3HPt/57dkM9uHgpn/8Id+nD6n
 jSLBqLBpAsaniBzXcn9Im0GkCyh5KKoJFcCywJoIoxeVuxS/H5eYmg1N24kA4flZqRSs=;
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=sf.net; s=x
 ;
 h=In-Reply-To:Content-Type:MIME-Version:References:Reply-To:Message-ID:
 Subject:Cc:To:From:Date:Sender:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=s4azxeQGydjur5EO3HvCGXPvD7oOvP7SzvfZm4pvq84=; b=jioEk5WWUrt0s7Pjcsh3NydkLQ
 XWdi+/Oy9nx8feIPvkqFYi10s4nGXjhj302PIK94hEWFV3n3CCUCy1IYbFdqesMA30p3kcsKDMUPA
 qIy/EXuskkRL/tFM4HDpTyrLiiYd5bUkRi22zoo2jnjB1LXvWsb8xx0hIm+U5Mz8DO9A=;
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by sfi-mx-3.v28.lw.sourceforge.com with esmtps
 (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128) (Exim 4.90_1)
 id 1i0qF8-00CUtk-0p
 for openipmi-developer@lists.sourceforge.net; Thu, 22 Aug 2019 16:47:23 +0000
Received: by mail-ot1-f65.google.com with SMTP id m24so6039718otp.12
 for <openipmi-developer@lists.sourceforge.net>;
 Thu, 22 Aug 2019 09:47:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:reply-to:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=s4azxeQGydjur5EO3HvCGXPvD7oOvP7SzvfZm4pvq84=;
 b=D3kNEVuclA6AitkGCigvj45ocBusxlZUK3+jfIbuc0o0H2uqvVKBHCD5YgCc8h6Wk8
 UHvr1GbFhG0aSkOJqvnQ6LR1i0VSLhLZbFu424g+SYDG4Mzv/prwoDsKJzu0P6GUiU3c
 YOlOM097sHA96ZrqkO7oLUcLKmbH6qUmHE7a8JxumLennk/i3X+4WAFxBatvm65YNf/m
 xoZRqfLaaVTJhxw0ab3wE24kd6mgJCFuTskCkUvDzo4IsXz49uxT5tErMqHKNnROzaMT
 LVRw6uzztoUPSSBc5kT/9CM8MkQ03Pt86COOPSJSABREgaXwpsP4djlCvC6QCk9duiUs
 BZtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :reply-to:references:mime-version:content-disposition:in-reply-to
 :user-agent;
 bh=s4azxeQGydjur5EO3HvCGXPvD7oOvP7SzvfZm4pvq84=;
 b=K0+cljEZO5Bh9VrX/QknsdUeoq4ECZ48kUEZbGi73C8aukURBuSvicKzuFWpifDxgW
 d2NFpHWjRkGqqZIMq+/4BylMblPeSldyXeymcLjyJncbYOAsvuupoZQ2oAOXomrTqmXj
 kFMGDEjuldkPaJV6vPT+et50NsO14GxdiGBbSLHqRrY8QxnucJLoSlnTeFcSPlzjvtAd
 ti1BheG2u46QmAcVGggT+4wVyG+ixrV+BkJAtqvjdmoO43Pot4Wqy4r3vj/Xsnt1SO7G
 c4GVWzMP0d0EdyOXucnQ8s5waKrm+IQE/ejylyRNPvY0xoM17ITZ/6aD84TZtbIbYphl
 zeRw==
X-Gm-Message-State: APjAAAV3OSQ+eGiWKge/H6xtvPyFiMthk2rik1JbCdof40WTc7wsQTbo
 6mCS5D9o3CClN+1fwcT0cL6/NCs=
X-Google-Smtp-Source: APXvYqwHnlFlXqhkG+EW+VmR0QYfPLrQgv1jvcq7M2DDmyfffAhpfz+a2tNTidNKcw3OrbztuQD2lQ==
X-Received: by 2002:a05:6830:16ce:: with SMTP id
 l14mr414000otr.169.1566492435732; 
 Thu, 22 Aug 2019 09:47:15 -0700 (PDT)
Received: from serve.minyard.net ([47.184.134.43])
 by smtp.gmail.com with ESMTPSA id 23sm6204oiz.8.2019.08.22.09.47.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 22 Aug 2019 09:47:15 -0700 (PDT)
Received: from minyard.net (t430m.minyard.net [192.168.27.3])
 by serve.minyard.net (Postfix) with ESMTPSA id 7DEE51800D1;
 Thu, 22 Aug 2019 16:47:14 +0000 (UTC)
Date: Thu, 22 Aug 2019 11:47:13 -0500
From: Corey Minyard <minyard@acm.org>
To: Baruch Siach <baruch@tkos.co.il>
Message-ID: <20190822164713.GQ5001@minyard.net>
References: <6a051666b50ae1df24b24312a7a56a03e343c15d.1565938497.git.baruch@tkos.co.il>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <6a051666b50ae1df24b24312a7a56a03e343c15d.1565938497.git.baruch@tkos.co.il>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Spam-Score: 0.5 (/)
X-Spam-Report: Spam Filtering performed by mx.sourceforge.net.
 See http://spamassassin.org/tag/ for more details.
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
 trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
 (tcminyard[at]gmail.com)
 0.0 URIBL_BLOCKED ADMINISTRATOR NOTICE: The query to URIBL was blocked.
 See
 http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
 for more information. [URIs: tkos.co.il]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level mail
 domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature,
 not necessarily valid
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and EnvelopeFrom
 freemail headers are different
 0.0 AWL AWL: Adjusted score from AWL reputation of From: address
X-Headers-End: 1i0qF8-00CUtk-0p
Subject: Re: [Openipmi-developer] [PATCH] sample: fix readline include in
 ipmi_serial_bmc_emu.c
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
Cc: openipmi-developer@lists.sourceforge.net
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: openipmi-developer-bounces@lists.sourceforge.net

On Fri, Aug 16, 2019 at 09:54:57AM +0300, Baruch Siach wrote:
> Bundled editline has been removed. Use the readline headers instead. Fix
> the build when editline is not installed on host.

Got it, I missed that in the conversion.  Thanks.

-corey

> 
> Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> ---
>  sample/ipmi_serial_bmc_emu.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/sample/ipmi_serial_bmc_emu.c b/sample/ipmi_serial_bmc_emu.c
> index e0ae0197688b..1b8bb9ac201f 100644
> --- a/sample/ipmi_serial_bmc_emu.c
> +++ b/sample/ipmi_serial_bmc_emu.c
> @@ -42,7 +42,7 @@
>  #include <unistd.h>
>  #include <stdlib.h>
>  #include <sys/select.h>
> -#include <editline/readline.h>
> +#include <readline/readline.h>
>  
>  #define _GNU_SOURCE
>  #include <getopt.h>
> -- 
> 2.23.0.rc1
> 


_______________________________________________
Openipmi-developer mailing list
Openipmi-developer@lists.sourceforge.net
https://lists.sourceforge.net/lists/listinfo/openipmi-developer
